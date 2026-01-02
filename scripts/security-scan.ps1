# Security Scan Script
# Usage: .\security-scan.ps1 [-Path "C:\path\to\project"]

param(
    [Parameter(Mandatory=$false)]
    [string]$Path = (Get-Location).Path
)

Write-Host \"[SECURITY] Scanning: $Path\" -ForegroundColor Cyan

$secretPatterns = @(
    'api[_-]?key\s*[:=]',
    'secret[_-]?key\s*[:=]',
    'password\s*[:=]',
    'token\s*[:=]\s*[\"''][a-zA-Z0-9]',
    'firebase.*apiKey',
    'PRIVATE[_-]?KEY',
    'AWS_SECRET',
    'client_secret'
)

$excludeDirs = @('.git', 'node_modules', 'dist', 'build', '.next')
$excludeFiles = @('*.lock', '*.md', '*.txt', 'package-lock.json')

$found = $false
$issues = @()

Get-ChildItem -Path $Path -Recurse -File | ForEach-Object {
    $file = $_
    
    # Skip excluded directories
    $skip = $false
    foreach ($dir in $excludeDirs) {
        if ($file.FullName -like \"*\$dir*\") {
            $skip = $true
            break
        }
    }
    
    if (-not $skip) {
        $content = Get-Content $file.FullName -Raw -ErrorAction SilentlyContinue
        if ($content) {
            foreach ($pattern in $secretPatterns) {
                if ($content -match $pattern) {
                    $issues += [PSCustomObject]@{
                        File = $file.FullName.Replace($Path, '.')
                        Pattern = $pattern
                    }
                    $found = $true
                }
            }
        }
    }
}

if ($found) {
    Write-Host \"\"
    Write-Host \"[WARNING] Potential secrets found!\" -ForegroundColor Red
    $issues | Format-Table -AutoSize
    Write-Host \"\"
    Write-Host \"Security Gate: FAIL\" -ForegroundColor Red
    exit 1
} else {
    Write-Host \"[OK] No secrets detected.\" -ForegroundColor Green
    Write-Host \"Security Gate: PASS\" -ForegroundColor Green
    exit 0
}
