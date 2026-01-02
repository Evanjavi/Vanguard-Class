# Version Bump Script
# Usage: .\version-bump.ps1 -Type "minor" [-Path "C:\path\to\project"]

param(
    [Parameter(Mandatory=$true)]
    [ValidateSet('major', 'minor', 'patch')]
    [string]$Type,
    
    [Parameter(Mandatory=$false)]
    [string]$Path = (Get-Location).Path
)

$dnaPath = Join-Path $Path \"PROJECT_DNA.md\"
$wbsPath = Join-Path $Path \"WBS.md\"

if (-not (Test-Path $dnaPath)) {
    Write-Host \"[ERROR] PROJECT_DNA.md not found. Are you in a Vanguard project?\" -ForegroundColor Red
    exit 1
}

# Read current version from DNA
$dnaContent = Get-Content $dnaPath -Raw
if ($dnaContent -match 'Version:\s*(\d+)\.(\d+)\.(\d+)') {
    $major = [int]$Matches[1]
    $minor = [int]$Matches[2]
    $patch = [int]$Matches[3]
    $oldVersion = \"$major.$minor.$patch\"
} else {
    Write-Host \"[ERROR] Could not parse version from PROJECT_DNA.md\" -ForegroundColor Red
    exit 1
}

# Calculate new version
switch ($Type) {
    'major' { $major++; $minor = 0; $patch = 0 }
    'minor' { $minor++; $patch = 0 }
    'patch' { $patch++ }
}
$newVersion = \"$major.$minor.$patch\"

Write-Host \"[VERSION] Bumping: $oldVersion -> $newVersion\" -ForegroundColor Cyan

# Update DNA
$dnaContent = $dnaContent -replace \"Version:\s*$oldVersion\", \"Version: $newVersion\"
$dnaContent | Out-File -FilePath $dnaPath -Encoding utf8

# Update WBS if exists
if (Test-Path $wbsPath) {
    $wbsContent = Get-Content $wbsPath -Raw
    $wbsContent = $wbsContent -replace \"Version:\s*$oldVersion\", \"Version: $newVersion\"
    $wbsContent | Out-File -FilePath $wbsPath -Encoding utf8
    Write-Host \"  [OK] Updated WBS.md\" -ForegroundColor Green
}

Write-Host \"  [OK] Updated PROJECT_DNA.md\" -ForegroundColor Green

# Git commit
$commitMsg = \"v$newVersion: Version bump\"
Write-Host \"\"
Write-Host \"[GIT] Creating commit: $commitMsg\" -ForegroundColor Cyan
Set-Location $Path
git add .
git commit -m $commitMsg
git tag \"v$newVersion\"

Write-Host \"\"
Write-Host \"[DONE] Version bumped to $newVersion\" -ForegroundColor Green
Write-Host \"       Don't forget to: git push && git push --tags\" -ForegroundColor Yellow
