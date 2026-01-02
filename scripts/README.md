# Vanguard Playbook Scripts

This folder contains automation scripts for common Vanguard Class operations.

## Available Scripts

| Script | Purpose | Usage |
|--------|---------|-------|
| `new-project.ps1` | Scaffold a new project | `.\new-project.ps1 -Name \"ProjectName\"` |
| `refresh-context.ps1` | Load context layers | `.\refresh-context.ps1 -Voice Gemini` |
| `security-scan.ps1` | Scan for secrets | `.\security-scan.ps1` |
| `version-bump.ps1` | Increment version | `.\version-bump.ps1 -Type minor` |

## Adding New Scripts

1. Create `.ps1` file in this folder
2. Add usage to this README
3. Test before committing

---

*Vanguard Class Tooling*
