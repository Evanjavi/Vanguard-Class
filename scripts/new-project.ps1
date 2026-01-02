# New Project Scaffolding Script
# Usage: .\new-project.ps1 -Name "MyProject" -Path "C:\path\to\parent"

param(
    [Parameter(Mandatory=$true)]
    [string]$Name,
    
    [Parameter(Mandatory=$false)]
    [string]$Path = (Get-Location).Path
)

$ProjectPath = Join-Path $Path $Name
$Date = Get-Date -Format "yyyy-MM-dd"

Write-Host "Creating project: $Name at $ProjectPath" -ForegroundColor Cyan

# Create directory structure
$dirs = @(
    "$ProjectPath",
    "$ProjectPath\.agent",
    "$ProjectPath\.agent\scripts",
    "$ProjectPath\.agent\workflows",
    "$ProjectPath\Chorus Documents",
    "$ProjectPath\src",
    "$ProjectPath\docs"
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
}

# Create PROJECT_DNA.md
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

# Create WBS.md
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

# Create THE_BOOK.md
$bookContent = "# The Book of $Name

> The chronicle of our journey.

---

## v0.1.0 - The Beginning
**Date:** $Date

### What Happened
- Project scaffolded using Vanguard Class template

---

*Those who forget history are doomed to refactor it.*"

$bookContent | Out-File -FilePath "$ProjectPath\THE_BOOK.md" -Encoding utf8

# Create README.md
$readmeContent = "# $Name

> [Project description]

## Quick Start

Install dependencies and run.

## Documentation

- PROJECT_DNA.md - Project identity
- WBS.md - Work breakdown structure
- THE_BOOK.md - Project history

---

*Built with Vanguard Class*"

$readmeContent | Out-File -FilePath "$ProjectPath\README.md" -Encoding utf8

# Initialize git
Set-Location $ProjectPath
git init
git add .
git commit -m "v0.1.0: Initial scaffold"

Write-Host ""
Write-Host "Project created successfully!" -ForegroundColor Green
Write-Host "Location: $ProjectPath" -ForegroundColor Yellow
