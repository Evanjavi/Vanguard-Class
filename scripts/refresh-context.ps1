# Context Refresh Script
# Usage: .\refresh-context.ps1 -Voice "Gemini" -ProjectPath "C:\path\to\project"

param(
    [Parameter(Mandatory=$false)]
    [ValidateSet('Gemini', 'Opus', 'Claude', 'Ana', 'Anti', 'Nova')]
    [string]$Voice = 'Gemini',
    
    [Parameter(Mandatory=$false)]
    [string]$ProjectPath = (Get-Location).Path
)

Write-Host \"[CONTEXT] Refreshing for $Voice at $ProjectPath\" -ForegroundColor Cyan

# Define context layers
$L0_Critical = @(
    \"PROJECT_DNA.md\",
    \".agent\rules.md\"
)

$L1_Architecture = @(
    \"WBS.md\",
    \"Chorus Documents\CHORUS_DNA.md\",
    \"COMPONENT_REGISTRY.md\"
)

$L2_History = @(
    \"THE_BOOK.md\",
    \"HANDOFF_NOTE.md\"
)

Write-Host \"\"
Write-Host \"--- L0: CRITICAL ---\" -ForegroundColor Yellow
foreach ($file in $L0_Critical) {
    $path = Join-Path $ProjectPath $file
    if (Test-Path $path) {
        Write-Host \"  [OK] $file\" -ForegroundColor Green
        # In actual usage, this is where you'd load the file
    } else {
        Write-Host \"  [--] $file (not found)\" -ForegroundColor DarkGray
    }
}

Write-Host \"\"
Write-Host \"--- L1: ARCHITECTURE ---\" -ForegroundColor Yellow
foreach ($file in $L1_Architecture) {
    $path = Join-Path $ProjectPath $file
    if (Test-Path $path) {
        Write-Host \"  [OK] $file\" -ForegroundColor Green
    } else {
        Write-Host \"  [--] $file (not found)\" -ForegroundColor DarkGray
    }
}

# Run security scan before L4
Write-Host \"\"
Write-Host \"[SECURITY] Running security scan...\" -ForegroundColor Cyan
$scanScript = Join-Path $PSScriptRoot \"security-scan.ps1\"
if (Test-Path $scanScript) {
    & $scanScript -Path $ProjectPath
    if ($LASTEXITCODE -ne 0) {
        Write-Host \"[BLOCKED] Security scan failed. L4 loading blocked.\" -ForegroundColor Red
        exit 1
    }
}

Write-Host \"\"
Write-Host \"--- L2: HISTORY ---\" -ForegroundColor Yellow
foreach ($file in $L2_History) {
    $path = Join-Path $ProjectPath $file
    if (Test-Path $path) {
        Write-Host \"  [OK] $file\" -ForegroundColor Green
    } else {
        Write-Host \"  [--] $file (not found)\" -ForegroundColor DarkGray
    }
}

Write-Host \"\"
Write-Host \"[DONE] Context refresh complete for $Voice\" -ForegroundColor Green
