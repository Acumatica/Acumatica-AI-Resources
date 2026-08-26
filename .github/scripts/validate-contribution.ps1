[CmdletBinding()]
param(
    [string]$BaseSha = "",
    [string]$HeadSha = "HEAD"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repositoryRoot = [System.IO.Path]::GetFullPath((Join-Path $PSScriptRoot "..\.."))
$errors = [System.Collections.Generic.List[string]]::new()

function Add-ValidationError {
    param([string]$Message)
    $script:errors.Add($Message)
}

function Get-RepositoryRelativePath {
    param([string]$Path)
    $fullPath = [System.IO.Path]::GetFullPath($Path)
    if (-not $fullPath.StartsWith($repositoryRoot, [System.StringComparison]::OrdinalIgnoreCase)) {
        throw "Path is outside the repository: $Path"
    }
    return $fullPath.Substring($repositoryRoot.Length).TrimStart("\", "/").Replace("\", "/")
}

function Read-JsonFile {
    param([string]$Path)

    try {
        return Get-Content -LiteralPath $Path -Raw -Encoding utf8 | ConvertFrom-Json -ErrorAction Stop
    }
    catch {
        Add-ValidationError "Invalid JSON in $(Get-RepositoryRelativePath $Path): $($_.Exception.Message)"
        return $null
    }
}

function Get-ChangedPaths {
    if ([string]::IsNullOrWhiteSpace($BaseSha)) {
        return @()
    }

    $paths = @(& git -C $repositoryRoot diff --name-only --diff-filter=ACMRT $BaseSha $HeadSha)
    if ($LASTEXITCODE -ne 0) {
        throw "Unable to determine changed files between $BaseSha and $HeadSha."
    }

    return @($paths | ForEach-Object { $_.Replace("\", "/") })
}

function Get-GitFileAtRevision {
    param(
        [string]$Revision,
        [string]$Path
    )

    $specification = "${Revision}:$Path"
    $content = (& git -C $repositoryRoot show $specification 2>$null | Out-String)
    if ($LASTEXITCODE -ne 0) {
        return $null
    }

    return $content
}

$changedPaths = @(Get-ChangedPaths)

# Validate every JSON manifest and marketplace file outside the imported documentation tree.
$jsonFiles = Get-ChildItem -LiteralPath $repositoryRoot -Recurse -Force -File -Filter "*.json" |
    Where-Object { (Get-RepositoryRelativePath $_.FullName) -notlike "Documentation/*" }

foreach ($jsonFile in $jsonFiles) {
    $null = Read-JsonFile $jsonFile.FullName
}

# A plugin is identified by a Claude plugin manifest. All supported platform manifests are required.
$claudeManifests = Get-ChildItem -LiteralPath $repositoryRoot -Recurse -Force -File -Filter "plugin.json" |
    Where-Object { $_.Directory.Name -eq ".claude-plugin" }

foreach ($claudeManifest in $claudeManifests) {
    $pluginRoot = $claudeManifest.Directory.Parent.FullName
    $pluginRelative = Get-RepositoryRelativePath $pluginRoot
    $manifestPaths = @(
        (Join-Path $pluginRoot ".claude-plugin\plugin.json"),
        (Join-Path $pluginRoot ".cursor-plugin\plugin.json"),
        (Join-Path $pluginRoot ".codex-plugin\plugin.json")
    )

    $versions = [System.Collections.Generic.List[string]]::new()
    foreach ($manifestPath in $manifestPaths) {
        if (-not (Test-Path -LiteralPath $manifestPath -PathType Leaf)) {
            Add-ValidationError "Plugin '$pluginRelative' is missing $(Get-RepositoryRelativePath $manifestPath)."
            continue
        }

        $manifest = Read-JsonFile $manifestPath
        if ($null -eq $manifest) {
            continue
        }

        if (-not $manifest.PSObject.Properties.Name.Contains("name") -or [string]::IsNullOrWhiteSpace([string]$manifest.name)) {
            Add-ValidationError "$(Get-RepositoryRelativePath $manifestPath) is missing a plugin name."
        }
        if (-not $manifest.PSObject.Properties.Name.Contains("version") -or [string]::IsNullOrWhiteSpace([string]$manifest.version)) {
            Add-ValidationError "$(Get-RepositoryRelativePath $manifestPath) is missing a version."
        }
        elseif ([string]$manifest.version -notmatch '^\d+\.\d+\.\d+(?:-[0-9A-Za-z.-]+)?$') {
            Add-ValidationError "$(Get-RepositoryRelativePath $manifestPath) has a non-semantic version '$($manifest.version)'."
        }
        else {
            $versions.Add([string]$manifest.version)
        }
    }

    $uniqueVersions = @($versions | Sort-Object -Unique)
    if ($uniqueVersions.Count -gt 1) {
        Add-ValidationError "Plugin '$pluginRelative' has inconsistent manifest versions: $($uniqueVersions -join ', ')."
    }

    if ($changedPaths.Count -gt 0) {
        $contentPrefixes = @(
            "$pluginRelative/skills/",
            "$pluginRelative/prompts/",
            "$pluginRelative/reference/"
        )
        $contentChanged = $false
        foreach ($changedPath in $changedPaths) {
            if ($contentPrefixes | Where-Object { $changedPath.StartsWith($_, [System.StringComparison]::Ordinal) }) {
                $contentChanged = $true
                break
            }
        }

        if ($contentChanged -and $uniqueVersions.Count -eq 1) {
            $claudeRelative = Get-RepositoryRelativePath $claudeManifest.FullName
            $baseManifestText = Get-GitFileAtRevision -Revision $BaseSha -Path $claudeRelative
            if ($null -eq $baseManifestText) {
                if ($uniqueVersions[0] -ne "1.0.0") {
                    Add-ValidationError "New plugin '$pluginRelative' must start at version 1.0.0."
                }
            }
            else {
                try {
                    $baseVersion = [string](($baseManifestText | ConvertFrom-Json -ErrorAction Stop).version)
                    if ($baseVersion -eq $uniqueVersions[0]) {
                        Add-ValidationError "Plugin '$pluginRelative' content changed without a version increment."
                    }
                }
                catch {
                    Add-ValidationError "Could not read the base version of '$pluginRelative'."
                }
            }
        }
    }
}

# Validate canonical skill discovery metadata and README registration.
$allSkillFiles = Get-ChildItem -LiteralPath $repositoryRoot -Recurse -Force -File -Filter "SKILL.md" |
    Where-Object { (Get-RepositoryRelativePath $_.FullName) -match '(^|/)skills/[^/]+/SKILL\.md$' }
$copilotSkillFiles = @($allSkillFiles | Where-Object {
    (Get-RepositoryRelativePath $_.FullName).StartsWith(".github/skills/", [System.StringComparison]::Ordinal)
})
$skillFiles = @($allSkillFiles | Where-Object {
    -not (Get-RepositoryRelativePath $_.FullName).StartsWith(".github/skills/", [System.StringComparison]::Ordinal)
})

foreach ($skillFile in $skillFiles) {
    $skillDirectory = $skillFile.Directory
    $skillName = $skillDirectory.Name
    $skillRelative = Get-RepositoryRelativePath $skillDirectory.FullName
    $skillText = Get-Content -LiteralPath $skillFile.FullName -Raw -Encoding utf8
    $frontmatter = [regex]::Match($skillText, '\A---\r?\n(?<yaml>.*?)\r?\n---(?:\r?\n|\z)', [System.Text.RegularExpressions.RegexOptions]::Singleline)

    if (-not $frontmatter.Success) {
        Add-ValidationError "$skillRelative/SKILL.md has missing or malformed YAML frontmatter."
        continue
    }

    $yaml = $frontmatter.Groups["yaml"].Value
    $nameMatch = [regex]::Match($yaml, '(?m)^name:\s*["'']?(?<value>[^\r\n"'']+)["'']?\s*$')
    if (-not $nameMatch.Success) {
        Add-ValidationError "$skillRelative/SKILL.md is missing the frontmatter name."
    }
    elseif ($nameMatch.Groups["value"].Value.Trim() -cne $skillName) {
        Add-ValidationError "$skillRelative/SKILL.md name '$($nameMatch.Groups["value"].Value.Trim())' does not match directory '$skillName'."
    }

    if ($yaml -notmatch '(?m)^description:\s*\S') {
        Add-ValidationError "$skillRelative/SKILL.md is missing the frontmatter description."
    }

    $pluginRoot = $skillDirectory.Parent.Parent.FullName
    $readmePath = Join-Path $pluginRoot "README.md"
    if (-not (Test-Path -LiteralPath $readmePath -PathType Leaf)) {
        Add-ValidationError "Plugin containing '$skillName' is missing $(Get-RepositoryRelativePath $readmePath)."
    }
    elseif ((Get-Content -LiteralPath $readmePath -Raw -Encoding utf8) -notmatch [regex]::Escape($skillName)) {
        Add-ValidationError "$(Get-RepositoryRelativePath $readmePath) does not list skill '$skillName'."
    }

    $skillChanged = $changedPaths | Where-Object { $_.StartsWith("$skillRelative/", [System.StringComparison]::Ordinal) }
    if ($skillChanged) {
        $reportPath = Join-Path $repositoryRoot "Verification\$skillName-review.md"
        if (-not (Test-Path -LiteralPath $reportPath -PathType Leaf)) {
            Add-ValidationError "Changed skill '$skillName' requires Verification/$skillName-review.md."
        }
        else {
            $reportText = Get-Content -LiteralPath $reportPath -Raw -Encoding utf8
            if ($reportText -notmatch '(?m)^No P1 findings\.$') {
                Add-ValidationError "Verification/$skillName-review.md does not confirm that P1 findings are resolved."
            }
            if ($reportText -notmatch '(?m)^No P2 findings\.$') {
                Add-ValidationError "Verification/$skillName-review.md does not confirm that P2 findings are resolved."
            }
        }
    }
}

# Every canonical skill must have one lightweight GitHub Copilot discovery adapter.
$canonicalSkills = [System.Collections.Generic.Dictionary[string, string]]::new(
    [System.StringComparer]::Ordinal
)
foreach ($skillFile in $skillFiles) {
    $skillName = $skillFile.Directory.Name
    $skillRelative = Get-RepositoryRelativePath $skillFile.FullName
    if ($canonicalSkills.ContainsKey($skillName)) {
        Add-ValidationError "Canonical skill name '$skillName' is duplicated at '$($canonicalSkills[$skillName])' and '$skillRelative'."
    }
    else {
        $canonicalSkills.Add($skillName, $skillRelative)
    }
}

$copilotSkills = [System.Collections.Generic.HashSet[string]]::new(
    [System.StringComparer]::Ordinal
)
foreach ($copilotSkillFile in $copilotSkillFiles) {
    $skillName = $copilotSkillFile.Directory.Name
    $skillRelative = Get-RepositoryRelativePath $copilotSkillFile.FullName
    $skillText = Get-Content -LiteralPath $copilotSkillFile.FullName -Raw -Encoding utf8
    $frontmatter = [regex]::Match($skillText, '\A---\r?\n(?<yaml>.*?)\r?\n---(?:\r?\n|\z)', [System.Text.RegularExpressions.RegexOptions]::Singleline)

    if (-not $copilotSkills.Add($skillName)) {
        Add-ValidationError "GitHub Copilot skill adapter '$skillName' is duplicated."
    }
    if (-not $frontmatter.Success) {
        Add-ValidationError "$skillRelative has missing or malformed YAML frontmatter."
        continue
    }

    $yaml = $frontmatter.Groups["yaml"].Value
    $nameMatch = [regex]::Match($yaml, '(?m)^name:\s*["'']?(?<value>[^\r\n"'']+)["'']?\s*$')
    if (-not $nameMatch.Success) {
        Add-ValidationError "$skillRelative is missing the frontmatter name."
    }
    elseif ($nameMatch.Groups["value"].Value.Trim() -cne $skillName) {
        Add-ValidationError "$skillRelative name '$($nameMatch.Groups["value"].Value.Trim())' does not match directory '$skillName'."
    }
    if ($yaml -notmatch '(?m)^description:\s*\S') {
        Add-ValidationError "$skillRelative is missing the frontmatter description."
    }

    if (-not $canonicalSkills.ContainsKey($skillName)) {
        Add-ValidationError "$skillRelative has no canonical skill with the name '$skillName'."
        continue
    }

    $expectedTarget = "../../../$($canonicalSkills[$skillName])"
    if ($skillText -notmatch [regex]::Escape("]($expectedTarget)")) {
        Add-ValidationError "$skillRelative must link to its canonical skill as '$expectedTarget'."
    }
}

foreach ($canonicalSkill in $canonicalSkills.GetEnumerator()) {
    if (-not $copilotSkills.Contains($canonicalSkill.Key)) {
        Add-ValidationError "Canonical skill '$($canonicalSkill.Key)' is missing .github/skills/$($canonicalSkill.Key)/SKILL.md."
    }
}

# Enforce the Developer Certificate of Origin for pull-request commits.
if (-not [string]::IsNullOrWhiteSpace($BaseSha)) {
    $commits = @(& git -C $repositoryRoot rev-list "$BaseSha..$HeadSha")
    if ($LASTEXITCODE -ne 0) {
        throw "Unable to enumerate commits between $BaseSha and $HeadSha."
    }

    foreach ($commit in $commits) {
        $message = (& git -C $repositoryRoot show -s --format=%B $commit | Out-String)
        if ($message -notmatch '(?m)^Signed-off-by:\s+.+\s+<[^<>\s]+@[^<>\s]+>\s*$') {
            Add-ValidationError "Commit $commit is missing a valid DCO Signed-off-by line."
        }
    }
}

# Permit only reviewed sensitive files with their approved content hashes.
$approvedSensitiveFiles = [System.Collections.Generic.Dictionary[string, string]]::new(
    [System.StringComparer]::Ordinal
)
$approvedSensitiveFiles.Add(
    "Documentation/UserGuide/Files/AcumaticaTrainingEncryption.pfx",
    "DF6CF321C42607A42ABF89C442552F3D6C3A906D8DFA354CA5C09D9D5EA30A46"
)

foreach ($approvedFile in $approvedSensitiveFiles.GetEnumerator()) {
    $fullPath = Join-Path $repositoryRoot $approvedFile.Key

    if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
        Add-ValidationError "Approved sensitive file is missing: $($approvedFile.Key)."
        continue
    }

    $actualHash = (Get-FileHash -LiteralPath $fullPath -Algorithm SHA256).Hash
    if ($actualHash -cne $approvedFile.Value) {
        Add-ValidationError "Approved sensitive file has an unexpected SHA-256: $($approvedFile.Key). Expected $($approvedFile.Value), got $actualHash."
    }
}

# Reject additional certificate and private-key files unless explicitly reviewed.
$sensitiveExtensions = @(".pfx", ".p12", ".pem", ".key")
Get-ChildItem -LiteralPath $repositoryRoot -Recurse -Force -File |
    ForEach-Object {
        $relativePath = Get-RepositoryRelativePath $_.FullName
        if ($relativePath.StartsWith(".git/", [System.StringComparison]::Ordinal)) {
            return
        }

        if (($sensitiveExtensions -contains $_.Extension.ToLowerInvariant()) -and
            -not $approvedSensitiveFiles.ContainsKey($relativePath)) {
            Add-ValidationError "Unapproved sensitive file: $relativePath."
        }
    }

if ($errors.Count -gt 0) {
    Write-Host "Contribution validation failed:" -ForegroundColor Red
    foreach ($validationError in $errors) {
        Write-Host " - $validationError" -ForegroundColor Red
    }
    exit 1
}

Write-Host "Contribution validation passed." -ForegroundColor Green
Write-Host "Validated $($skillFiles.Count) skills, $($copilotSkillFiles.Count) GitHub Copilot adapters, and $($claudeManifests.Count) plugins."
