# Central Command Refresh Protocol
# Version: 3.0.0 (Vanguard Global)
# Updated: January 2026

param(
    [Parameter(Mandatory=$true)]
    [string]$Voice,         # "Gemini", "Anti", "Opus", "Claude", "Ana", "Nova"
    [string]$Project,       # e.g. "CevicheBar", "FlorSystem"
    [switch]$Quick          # Skip heavy logs
)

# --- 0. Alignment Check (Model Integrity) ---
$Voice = $Voice.Substring(0,1).ToUpper() + $Voice.Substring(1).ToLower()
$ModelFamily = ""

switch ($Voice) {
    "Gemini" { $ModelFamily = "Google Gemini 2.0 (Pro/Flash)" }
    "Anti"   { $ModelFamily = "Google Gemini 2.0 (Pro/Flash)" }
    "Nova"   { $ModelFamily = "Google Gemini 2.0 (Pro/Flash)" }
    "Opus"   { $ModelFamily = "Anthropic Claude 3.5 (Sonnet)" }
    "Claude" { $ModelFamily = "Anthropic Claude 3.5 (Sonnet)" }
    "Ana"    { $ModelFamily = "Anthropic Claude 3.5 (Sonnet)" }
    Default  { Write-Error "Unknown Voice: $Voice. Accepted: Gemini, Anti, Opus, Claude, Ana, Nova"; exit 1 }
}

Write-Host "--- [CENTRAL COMMAND] Vanguard Class v2.0 ---" -ForegroundColor Cyan
Write-Host "Voice: $Voice | Required Model Family: $ModelFamily" -ForegroundColor Magenta
Write-Host "-------------------------------------------------" -ForegroundColor Gray

# --- 1. Global Context Loading (VanguardPlaybook) ---
$VanguardPath = "C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook"

# 1.1 The Foundation (Everyone gets this)
Write-Host "`n[CORE DOCTRINE]" -ForegroundColor Green
Get-Content "$VanguardPath\docs\knowledge-base\CORE_DOCTRINE.md" -Raw | Out-Host
Get-Content "$VanguardPath\docs\protocols\CHORUS_DNA.md" -Raw | Out-Host

# 1.2 Voice-Specific Protocol Loading
Write-Host "`n[VOICE PROTOCOLS: $Voice]" -ForegroundColor Yellow

switch ($Voice) {
    "Anti" {
        # THE MEMORY - Max Context
        Get-Content "$VanguardPath\docs\protocols\ANTI_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPERATIONAL_LOOP.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\REFRESH_PROTOCOL.md" -Raw | Out-Host
    }
    "Gemini" {
        # THE ANCHOR - Structure
        Get-Content "$VanguardPath\docs\protocols\GEMINI_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\standards\TECH_DOCTRINE.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPERATIONAL_LOOP.md" -Raw | Out-Host
    }
    "Opus" {
        # THE STRATEGIST - Vision & Standards
        Get-Content "$VanguardPath\docs\protocols\OPUS_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\DECISION_TREE.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\standards\INDUSTRY_STANDARDS.md" -Raw | Out-Host
    }
    "Ana" {
        # THE SHIELD - Security
        Get-Content "$VanguardPath\docs\protocols\ANA_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\standards\INDUSTRY_STANDARDS.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPERATIONAL_LOOP.md" -Raw | Out-Host
    }
    "Claude" {
        # THE ARTIST - Aesthetics
        Get-Content "$VanguardPath\docs\protocols\CLAUDE_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\standards\ARTIFACT_STANDARDS.md" -Raw | Out-Host
    }
    "Nova" {
        # THE SCOUT - Speed
        Get-Content "$VanguardPath\docs\protocols\NOVA_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPTIMIZATION_PROTOCOL.md" -Raw | Out-Host
    }
}

# --- 2. Project Context Loading ---
if ($Project) {
    $ProjectPath = "C:\Users\evanj\OneDrive\Desktop\$Project"
    if (Test-Path $ProjectPath) {
        Write-Host "`n--- [OPERATION] $Project ---" -ForegroundColor Yellow
        
        # 2.1 Standard Context (Everyone)
        if (Test-Path "$ProjectPath\PROJECT_DNA.md") { Get-Content "$ProjectPath\PROJECT_DNA.md" -Raw | Out-Host }
        if (Test-Path "$ProjectPath\task.md") { 
            Write-Host "`n[CURRENT MISSION]" -ForegroundColor Green
            Get-Content "$ProjectPath\task.md" -Raw | Out-Host 
        }

        # 2.2 Extended Context (Voice Specific)
        if ($Voice -eq "Anti") {
            Write-Host "`n[ANTI-GRAVITY WELL: MAXIMUM CONTEXT]" -ForegroundColor Cyan
            $Files = @("CHORUS_STATE.md", "ACTIVE_ORDERS.md", "DECISION_LOG.md", "WBS.md", "THE_BOOK.md")
            foreach ($f in $Files) {
                if (Test-Path "$ProjectPath\$f") { 
                    Write-Host "`n[LOADING... $f]"
                    Get-Content "$ProjectPath\$f" -Raw | Out-Host 
                }
            }
        }
        elseif ($Voice -eq "Opus") {
             if (Test-Path "$ProjectPath\THE_BOOK.md") { 
                 Write-Host "`n[HISTORY]"
                 Get-Content "$ProjectPath\THE_BOOK.md" -Raw | Out-Host 
             }
        }
        else {
             # Standard State for others
             if (Test-Path "$ProjectPath\CHORUS_STATE.md") { Get-Content "$ProjectPath\CHORUS_STATE.md" -Raw | Out-Host }
             if (Test-Path "$ProjectPath\ACTIVE_ORDERS.md") { Get-Content "$ProjectPath\ACTIVE_ORDERS.md" -Raw | Out-Host }
        }
    }
    else {
        Write-Host "Project $Project not found!" -ForegroundColor Red
    }
}
