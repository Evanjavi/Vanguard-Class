---
description: Scaffold a new project with Vanguard structure
---

# New Project Scaffolding

Creates a new Vanguard Class project with full directory structure, templates, and git initialization.

## Prerequisites

- PowerShell available
- Git installed
- VanguardPlaybook accessible at `~/Desktop/VanguardPlaybook`

## Steps

1. Navigate to where you want the project created

2. Run the scaffold script
   // turbo

```powershell
& "$env:USERPROFILE\OneDrive\Desktop\VanguardPlaybook\scripts\new-project.ps1" -Name "[ProjectName]" -Path "[ParentDirectory]"
```

3. Verify the structure was created correctly
   // turbo

```powershell
Get-ChildItem -Recurse -Depth 2 "[ProjectPath]" | Select-Object FullName
```

## What Gets Created

| File                                    | Source    | Description                     |
| --------------------------------------- | --------- | ------------------------------- |
| `PROJECT_DNA.md`                        | Generated | Project identity                |
| `WBS.md`                                | Generated | Work breakdown structure        |
| `THE_BOOK.md`                           | Template  | Project chronicle               |
| `README.md`                             | Generated | Project overview                |
| `.antigravity/task.md`                  | Template  | Task tracker                    |
| `.antigravity/ACCESSIBILITY_BACKLOG.md` | Template  | Accessibility issues (Vex owns) |
| `.antigravity/briefs/`                  | Directory | Chorus review briefs            |
| `.antigravity/audits/`                  | Directory | Audit reports                   |
| `.agent/workflows/`                     | Directory | Project-specific workflows      |

## After Scaffolding

1. Edit `PROJECT_DNA.md` with project purpose and tech stack
2. Run `/vanguard-refresh` to initialize context for voices
3. Begin Phase A planning with Opus
