<#
.SYNOPSIS
    Reports the ground-truth facts about an Acumatica site needed before updating a customization:
    exact installed version, and whether the reference sources are present.

.DESCRIPTION
    Run this once, up front, instead of inferring the site version from build-error behavior.
    Reads assembly versions directly from the site's own Bin folder (ground truth for what
    actually loads at runtime) and confirms the paths the update workflow depends on.

.EXAMPLE
    .\Get-SiteInfo.ps1 -SiteRoot "C:\Acumatica Sites\26r1"

#>
[CmdletBinding()]
param(
    [Parameter(Mandatory, Position = 0)]
    [ValidateNotNullOrEmpty()]
    [string]$SiteRoot
)

$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $SiteRoot -PathType Container)) { throw "Site root not found: $SiteRoot" }
$SiteRoot = (Resolve-Path -LiteralPath $SiteRoot).Path

$bin = Join-Path $SiteRoot 'Bin'
Write-Host "Site root : $SiteRoot"

# --- Version, from the real DLLs rather than any manifest or guess -----------------
foreach ($name in @('PX.Data.dll', 'PX.Objects.dll', 'PX.Common.dll')) {
    $dll = Join-Path $bin $name
    if (Test-Path -LiteralPath $dll -PathType Leaf) {
        $asmVer  = [System.Reflection.AssemblyName]::GetAssemblyName($dll).Version
        $fileVer = (Get-Item $dll).VersionInfo.FileVersion
        Write-Host ("{0,-18} assembly {1,-14} file {2}" -f $name, $asmVer, $fileVer)
    }
    else {
        Write-Host ("{0,-18} MISSING" -f $name) -ForegroundColor Red
    }
}

# --- The paths the update workflow depends on --------------------------------------
$checks = [ordered]@{
    'Bin (reference DLLs)'      = $bin
    'PX.CommandLine.exe'        = Join-Path $bin 'PX.CommandLine.exe'
    'App_Data\CodeRepository'   = Join-Path $SiteRoot 'App_Data\CodeRepository'
    'FrontendSources (modern)'  = Join-Path $SiteRoot 'FrontendSources\screen\src\screens'
    'Pages (classic aspx)'      = Join-Path $SiteRoot 'Pages'
    'web.config'                = Join-Path $SiteRoot 'web.config'
    'Currently published doc'   = Join-Path $SiteRoot 'App_Data\CustomizationPublishedDoc.zip'
}

Write-Host ''
foreach ($k in $checks.Keys) {
    $exists = Test-Path -LiteralPath $checks[$k]
    $mark   = if ($exists) { 'OK     ' } else { 'MISSING' }
    $color  = if ($exists) { 'Green' } else { 'Yellow' }
    Write-Host ("  [{0}] {1,-26} {2}" -f $mark, $k, $checks[$k]) -ForegroundColor $color
}

# --- Node toolchain: the most common modern-UI publish failure unrelated to code ---
Write-Host ''
$node = Get-Command node -ErrorAction SilentlyContinue
if ($node) {
    Write-Host "  node: $(& node --version) ($($node.Source))" -ForegroundColor Green
}
else {
    Write-Host "  node: not on PATH - publishing /FrontendSources may fail on the frontend build" -ForegroundColor Yellow
}

# --- CodeRepository top-level modules, for grep targeting --------------------------
$repo = Join-Path $SiteRoot 'App_Data\CodeRepository'
if (Test-Path -LiteralPath $repo -PathType Container) {
    Write-Host ''
    Write-Host "CodeRepository top level (grep here for version-exact examples):"
    Get-ChildItem $repo -Directory | ForEach-Object { Write-Host "  $($_.Name)" }
}
