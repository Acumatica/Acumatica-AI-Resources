[CmdletBinding()]
param(
    [string]$BaseSha = "",
    [string]$HeadSha = "HEAD"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot "..\.."))
$errors = [System.Collections.Generic.List[string]]::new()

function Get-RepositoryRelativePath {
    param([string]$Path)
    $fullPath = [System.IO.Path]::GetFullPath($Path)
    if (-not $fullPath.StartsWith($repositoryRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "Path is outside the repository: $Path"
    }
    return $fullPath.Substring($repositoryRoot.Length).TrimStart("\", "/").Replace("\", "/")
}

function Test-ExactPathCase {
    param([string]$Path)

    $fullPath = [System.IO.Path]::GetFullPath($Path)
    if (-not $fullPath.StartsWith($repositoryRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
        return $false
    }
    $relative = $fullPath.Substring($repositoryRoot.Length).TrimStart("\", "/")

    $current = $repositoryRoot
    foreach ($part in ($relative -split '[\\/]')) {
        if ([string]::IsNullOrWhiteSpace($part) -or $part -eq ".") {
            continue
        }

        $match = Get-ChildItem -LiteralPath $current -Force -ErrorAction SilentlyContinue |
            Where-Object { $_.Name -ceq $part } |
            Select-Object -First 1
        if ($null -eq $match) {
            return $false
        }
        $current = $match.FullName
    }

    return $true
}

if ([string]::IsNullOrWhiteSpace($BaseSha)) {
    $markdownFiles = Get-ChildItem -LiteralPath $repositoryRoot -Recurse -Force -File -Filter "*.md" |
        Where-Object { (Get-RepositoryRelativePath $_.FullName) -notlike "Documentation/*" }
}
else {
    $changedPaths = @(& git -C $repositoryRoot diff --name-only --diff-filter=ACMRT $BaseSha $HeadSha)
    if ($LASTEXITCODE -ne 0) {
        throw "Unable to determine changed files between $BaseSha and $HeadSha."
    }

    $markdownFiles = foreach ($changedPath in $changedPaths) {
        $normalized = $changedPath.Replace("\", "/")
        if ($normalized -like "Documentation/*" -or $normalized -notlike "*.md") {
            continue
        }
        $fullPath = Join-Path $repositoryRoot $normalized
        if (Test-Path -LiteralPath $fullPath -PathType Leaf) {
            Get-Item -LiteralPath $fullPath
        }
    }
}

$linkPattern = '!?(?:\[[^\]]*\])\((?<target><[^>]+>|[^\s\)]+)'

foreach ($markdownFile in @($markdownFiles)) {
    $content = Get-Content -LiteralPath $markdownFile.FullName -Raw -Encoding utf8
    foreach ($match in [regex]::Matches($content, $linkPattern)) {
        $target = $match.Groups["target"].Value.Trim()
        if ($target.StartsWith("<") -and $target.EndsWith(">")) {
            $target = $target.Substring(1, $target.Length - 2)
        }

        if ([string]::IsNullOrWhiteSpace($target) -or $target.StartsWith("#") -or $target -match '^[A-Za-z][A-Za-z0-9+.-]*:') {
            continue
        }

        $pathPart = ($target -split '#', 2)[0]
        try {
            $pathPart = [System.Uri]::UnescapeDataString($pathPart)
        }
        catch {
            $errors.Add("$(Get-RepositoryRelativePath $markdownFile.FullName) contains an invalid encoded link '$target'.")
            continue
        }

        if ($pathPart.StartsWith("/")) {
            $candidate = Join-Path $repositoryRoot $pathPart.TrimStart("/")
        }
        else {
            $candidate = Join-Path $markdownFile.Directory.FullName $pathPart
        }
        $candidate = [System.IO.Path]::GetFullPath($candidate)

        if (-not $candidate.StartsWith($repositoryRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
            $errors.Add("$(Get-RepositoryRelativePath $markdownFile.FullName) links outside the repository: '$target'.")
        }
        elseif (-not (Test-Path -LiteralPath $candidate)) {
            $errors.Add("$(Get-RepositoryRelativePath $markdownFile.FullName) contains a broken local link: '$target'.")
        }
        elseif (-not (Test-ExactPathCase $candidate)) {
            $errors.Add("$(Get-RepositoryRelativePath $markdownFile.FullName) uses incorrect path casing: '$target'.")
        }
    }
}

if ($errors.Count -gt 0) {
    Write-Host "Local link validation failed:" -ForegroundColor Red
    foreach ($linkError in $errors) {
        Write-Host " - $linkError" -ForegroundColor Red
    }
    exit 1
}

Write-Host "Local link validation passed for $(@($markdownFiles).Count) Markdown files." -ForegroundColor Green
