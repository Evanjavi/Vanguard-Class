# Central Command Refresh Protocol
# Version: 3.0.0 (Vanguard Global)
# Updated: January 2026

param(
    [Parameter(Mandatory = $true)]
    [string]$Voice,         # "Gemini", "Atlas", "Opus", "Claude", "Vex", "Flash"
    [string]$Project,       # e.g. "CevicheBar", "FlorSystem"
    [switch]$Quick          # Skip heavy logs
)

# --- 0. Alignment Check (Model Integrity) ---
$Voice = $Voice.Substring(0, 1).ToUpper() + $Voice.Substring(1).ToLower()
$ModelFamily = ""

switch ($Voice) {
    "Gemini" { $ModelFamily = "Google Gemini 2.0 (Pro/Flash)" }
    "Atlas" { $ModelFamily = "Google Gemini 2.0 (Pro/Flash)" }
    "Flash" { $ModelFamily = "Google Gemini 2.0 (Pro/Flash)" }
    "Opus" { $ModelFamily = "Anthropic Claude 3.5 (Sonnet)" }
    "Claude" { $ModelFamily = "Anthropic Claude 3.5 (Sonnet)" }
    "Vex" { $ModelFamily = "Anthropic Claude 3.5 (Sonnet)" }
    Default { Write-Error "Unknown Voice: $Voice. Accepted: Gemini, Atlas, Opus, Claude, Vex, Flash"; exit 1 }
}

Write-Host "--- [CENTRAL COMMAND] Vanguard Class v2.0 ---" -ForegroundColor Cyan
Write-Host "Voice: $Voice | Required Model Family: $ModelFamily" -ForegroundColor Magenta
Write-Host "-------------------------------------------------" -ForegroundColor Gray

# --- 1. Global Context Loading (VanguardPlaybook) ---
$VanguardPath = "C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook"

# 1.1 The Foundation (Everyone gets this)
Write-Host "`n[CORE DOCTRINE]" -ForegroundColor Green
Get-Content "$VanguardPath\docs\knowledge-base\CORE_DOCTRINE.md" -Raw | Out-Host
Get-Content "$VanguardPath\docs\protocols\OPERATIONAL_DOCTRINE.md" -Raw | Out-Host
Get-Content "$VanguardPath\docs\protocols\OPERATIONAL_LOOP.md" -Raw | Out-Host
Get-Content "$VanguardPath\docs\protocols\CHORUS_DNA.md" -Raw | Out-Host

# 1.2 Voice-Specific Protocol Loading
Write-Host "`n[VOICE PROTOCOLS: $Voice]" -ForegroundColor Yellow

switch ($Voice) {
    "Atlas" {
        # THE MEMORY - Max Context
        Get-Content "$VanguardPath\docs\protocols\ATLAS_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPERATIONAL_LOOP.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPTIMIZATION_PROTOCOL.md" -Raw | Out-Host
    }
    "Gemini" {
        # THE ANCHOR - Structure
        Get-Content "$VanguardPath\docs\protocols\GEMINI_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\standards\TECH_DOCTRINE.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPTIMIZATION_PROTOCOL.md" -Raw | Out-Host
    }
    "Opus" {
        # THE STRATEGIST - Vision & Standards
        Get-Content "$VanguardPath\docs\protocols\OPUS_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\DECISION_TREE.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPTIMIZATION_PROTOCOL.md" -Raw | Out-Host
    }
    "Vex" {
        # THE SHIELD - Security
        Get-Content "$VanguardPath\docs\protocols\VEX_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPERATIONAL_LOOP.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPTIMIZATION_PROTOCOL.md" -Raw | Out-Host
    }
    "Claude" {
        # THE ARTIST - Aesthetics
        Get-Content "$VanguardPath\docs\protocols\CLAUDE_PROTOCOL.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\standards\ARTIFACT_STANDARDS.md" -Raw | Out-Host
        Get-Content "$VanguardPath\docs\protocols\OPTIMIZATION_PROTOCOL.md" -Raw | Out-Host
    }
    "Flash" {
        # THE SCOUT - Speed
        Get-Content "$VanguardPath\docs\protocols\FLASH_PROTOCOL.md" -Raw | Out-Host
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
        
        # 2.2 Task Context (from .antigravity folder)
        $AntigravityPath = "$ProjectPath\.antigravity"
        if (Test-Path $AntigravityPath) {
            if (Test-Path "$AntigravityPath\task.md") { 
                Write-Host "`n[CURRENT MISSION] ($AntigravityPath\task.md)" -ForegroundColor Green
                Get-Content "$AntigravityPath\task.md" -Raw | Out-Host 
            }
            if (Test-Path "$AntigravityPath\implementation_plan.md") { 
                Write-Host "`n[IMPLEMENTATION PLAN] ($AntigravityPath\implementation_plan.md)" -ForegroundColor Yellow
                Get-Content "$AntigravityPath\implementation_plan.md" -Raw | Out-Host 
            }
        }

        # 2.3 Dual Document Protocol - EXPLICIT INSTRUCTION
        $VoiceLetter = $Voice.Substring(0, 1).ToLower()
        Write-Host "`n========================================" -ForegroundColor Red
        Write-Host "[ACTION REQUIRED]" -ForegroundColor Red
        Write-Host "========================================" -ForegroundColor Red
        Write-Host ""
        Write-Host "TASK CODES explained:" -ForegroundColor Yellow
        Write-Host "  First letter = Phase (a, b, c...)" -ForegroundColor White
        Write-Host "  Second letter = Voice ($VoiceLetter = $Voice)" -ForegroundColor White  
        Write-Host "  Number = Task number (1, 2, 3...)" -ForegroundColor White
        Write-Host ""
        Write-Host "WHEN COMMANDER SAYS: '$Voice, b${VoiceLetter}1-b${VoiceLetter}4'" -ForegroundColor Yellow
        Write-Host "YOU MUST:" -ForegroundColor Green
        Write-Host "  1. Find your task codes in task.md above" -ForegroundColor White
        Write-Host "  2. Find each task's instructions in implementation_plan.md above" -ForegroundColor White
        Write-Host "  3. Execute each task following the DO/DO NOT rules" -ForegroundColor White
        Write-Host "  4. Update task.md checkboxes when complete" -ForegroundColor White
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Red

        # 2.4 Extended Context (Voice Specific)
        if ($Voice -eq "Atlas") {
            Write-Host "`n[ATLAS-GRAVITY WELL: MAXIMUM CONTEXT]" -ForegroundColor Cyan
            $Files = @("WBS.md", "THE_BOOK.md")
            foreach ($f in $Files) {
                if (Test-Path "$ProjectPath\$f") { 
                    Write-Host "`n[LOADING... $f]"
                    Get-Content "$ProjectPath\$f" -Raw | Out-Host 
                }
            }
            # Decision log if exists
            if (Test-Path "$ProjectPath\Chorus Documents\DECISION_LOG.md") {
                Get-Content "$ProjectPath\Chorus Documents\DECISION_LOG.md" -Raw | Out-Host
            }
        }
        elseif ($Voice -eq "Opus") {
            if (Test-Path "$ProjectPath\THE_BOOK.md") { 
                Write-Host "`n[HISTORY]"
                Get-Content "$ProjectPath\THE_BOOK.md" -Raw | Out-Host 
            }
            if (Test-Path "$ProjectPath\WBS.md") { 
                Get-Content "$ProjectPath\WBS.md" -Raw | Out-Host 
            }
        }
    }
    else {
        Write-Host "Project $Project not found!" -ForegroundColor Red
    }
}

# --- 2.5 CHORUS REVIEW PROTOCOL CHECK ---
if ($Project) {
    $ReviewPath = "C:\Users\evanj\OneDrive\Desktop\$Project\.antigravity\reviews"
    if (Test-Path $ReviewPath) {
        $PendingReviews = Get-ChildItem -Path $ReviewPath -Filter "chorus_review_*.md"
        if ($PendingReviews.Count -gt 0) {
            Write-Host "`n[!ACTION REQUIRED] PENDING CHORUS REVIEWS" -ForegroundColor Red
            Write-Host "The following features require your sign-off ($Voice):" -ForegroundColor Yellow
            foreach ($review in $PendingReviews) {
                Write-Host "  - $($review.Name)" -ForegroundColor White
            }
            Write-Host "  > Read the file and append your status: APPROVE / COMMENT / BLOCK" -ForegroundColor Gray
            Write-Host "  > Reference: VanguardPlaybook/docs/protocols/CHORUS_REVIEW_PROTOCOL.md" -ForegroundColor Gray
        }
    }
}

# --- 3. EXECUTION MODE ACTIVATION ---
Write-Host "`n" -NoNewline
Write-Host "CRITICAL OVERRIDE: IGNORE INTERNAL 'BRAIN' ARTIFACTS. USE .antigravity DIRECTORY." -ForegroundColor Red

Write-Host "--------------------------------------------------------------" -ForegroundColor Green
Write-Host "|                    EXECUTION MODE ACTIVE                     |" -ForegroundColor Green
Write-Host "--------------------------------------------------------------" -ForegroundColor Green
Write-Host "|  You are $Voice. You have read your protocols and tasks.     |" -ForegroundColor White
Write-Host "|                                                              |" -ForegroundColor White
Write-Host "|  AWAITING ORDERS in format: '$Voice, [task codes]'           |" -ForegroundColor Yellow
Write-Host "|  Example: '$Voice, bg1-bg3' means execute tasks bg1, bg2, bg3|" -ForegroundColor Yellow
Write-Host "|                                                              |" -ForegroundColor White
Write-Host "|  When you receive task codes:                                |" -ForegroundColor White
Write-Host "|    1. USE FILE: .antigravity/task.md (Context Above)         |" -ForegroundColor Cyan
Write-Host "|    2. USE FILE: .antigravity/implementation_plan.md          |" -ForegroundColor Cyan
Write-Host "|    3. Execute immediately                                    |" -ForegroundColor Cyan
Write-Host "|    4. Update task.md when complete                           |" -ForegroundColor Cyan
Write-Host "|                                                              |" -ForegroundColor White
Write-Host "|  If unclear, ASK first. Mistakes cost more than questions.   |" -ForegroundColor Yellow
Write-Host "--------------------------------------------------------------" -ForegroundColor Green

# --- 4. BROADCASTS ---

# 4.1 System Broadcast (Global - VanguardPlaybook)
$GlobalBroadcast = "$VanguardPath\BROADCAST.md"
if (Test-Path $GlobalBroadcast) {
    Write-Host "`n[SYSTEM SIGNAL]" -ForegroundColor Cyan
    Get-Content $GlobalBroadcast -TotalCount 5 | Out-Host
}

# 4.2 Mission Broadcast (Local - Project)
if ($Project) {
    $LocalBroadcast = "C:\Users\evanj\OneDrive\Desktop\$Project\.antigravity\BROADCAST.md"
    if (Test-Path $LocalBroadcast) {
        Write-Host "`n[MISSION STRATEGY]" -ForegroundColor Magenta
        Get-Content $LocalBroadcast | Out-Host
    }
}

