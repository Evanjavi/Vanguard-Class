# New Project Scaffolding Script
# Usage: .\new-project.ps1 -Name "MyProject" -Path "C:\path\to\parent"
# Scaffolds a Vanguard Class project using Playbook templates.

param(
    [Parameter(Mandatory=$true)]
    [string]$Name,
    
    [Parameter(Mandatory=$false)]
    [string]$Path = (Get-Location).Path
)

$ProjectPath = Join-Path $Path $Name
$Date = Get-Date -Format "yyyy-MM-dd"
$PlaybookRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$TemplatesDir = Join-Path $PlaybookRoot "templates"

Write-Host "Creating project: $Name at $ProjectPath" -ForegroundColor Cyan
Write-Host "Using templates from: $TemplatesDir" -ForegroundColor DarkGray

# --- Directory Structure ---

$dirs = @(
    "$ProjectPath",
    "$ProjectPath\.agent",
    "$ProjectPath\.agent\scripts",
    "$ProjectPath\.agent\workflows",
    "$ProjectPath\.antigravity",
    "$ProjectPath\.antigravity\briefs",
    "$ProjectPath\.antigravity\audits",
    "$ProjectPath\Chorus Documents",
    "$ProjectPath\src",
    "$ProjectPath\docs"
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

Write-Host "  [+] Directory structure created" -ForegroundColor DarkGreen

# --- Template-Based Files ---

# Helper: Copy template and replace placeholders
function Copy-Template {
    param(
        [string]$TemplateName,
        [string]$DestPath
    )
    $templatePath = Join-Path $TemplatesDir $TemplateName
    if (Test-Path $templatePath) {
        $content = Get-Content $templatePath -Raw
        $content = $content -replace '\[Project Name\]', $Name
        $content = $content -replace '\[YYYY-MM-DD\]', $Date
        $content | Out-File -FilePath $DestPath -Encoding utf8
        Write-Host "  [+] $(Split-Path -Leaf $DestPath) (from template)" -ForegroundColor DarkGreen
    } else {
        Write-Host "  [!] Template not found: $TemplateName" -ForegroundColor Yellow
    }
}

# THE_BOOK.md — from template with scaffold entry
Copy-Template "THE_BOOK_TEMPLATE.md" "$ProjectPath\THE_BOOK.md"

# ACCESSIBILITY_BACKLOG.md — from template
Copy-Template "ACCESSIBILITY_BACKLOG_TEMPLATE.md" "$ProjectPath\.antigravity\ACCESSIBILITY_BACKLOG.md"

# task.md — from template
Copy-Template "TASK_TEMPLATE.md" "$ProjectPath\.antigravity\task.md"

# --- Generated Files (no template) ---

# PROJECT_DNA.md
$dnaContent = "# $Name DNA

**Purpose:** [Describe your project]

**Version:** 0.1.0  
**Created:** $Date  
**Owner:** Commander Evan

---

## Tech Stack

| Layer | Technology |
|-------|------------|
| Frontend | TBD |
| Backend | TBD |
| Database | TBD |

---

*Vanguard Class Project*"

$dnaContent | Out-File -FilePath "$ProjectPath\PROJECT_DNA.md" -Encoding utf8
Write-Host "  [+] PROJECT_DNA.md" -ForegroundColor DarkGreen

# WBS.md
$wbsContent = "# $Name WBS

**Version:** 0.1.0  
**Last Updated:** $Date

---

## Active Sprint: v0.1.x

### To Do
- [ ] Define tech stack
- [ ] Set up development environment

---

## Completed

### v0.1.0 - Scaffold
- [x] Project scaffolded with Vanguard template

---

*Vanguard Class - WBS*"

$wbsContent | Out-File -FilePath "$ProjectPath\WBS.md" -Encoding utf8
Write-Host "  [+] WBS.md" -ForegroundColor DarkGreen

# README.md
$readmeContent = "# $Name

> [Project description]

## Quick Start

Install dependencies and run.

## Documentation

- PROJECT_DNA.md - Project identity
- WBS.md - Work breakdown structure
- THE_BOOK.md - Project history
- .antigravity/task.md - Current task tracker
- .antigravity/ACCESSIBILITY_BACKLOG.md - Accessibility issues (Vex owns)

---

*Built with Vanguard Class*"

$readmeContent | Out-File -FilePath "$ProjectPath\README.md" -Encoding utf8
Write-Host "  [+] README.md" -ForegroundColor DarkGreen

# --- Git Init ---

Set-Location $ProjectPath
git init
git add .
git commit -m "v0.1.0: Initial scaffold"

Write-Host ""
Write-Host "Project created successfully!" -ForegroundColor Green
Write-Host "Location: $ProjectPath" -ForegroundColor Yellow
Write-Host ""
Write-Host "Scaffolded:" -ForegroundColor Cyan
Write-Host "  PROJECT_DNA.md, WBS.md, THE_BOOK.md, README.md"
Write-Host "  .antigravity/task.md, .antigravity/ACCESSIBILITY_BACKLOG.md"
Write-Host "  .antigravity/briefs/, .antigravity/audits/"
