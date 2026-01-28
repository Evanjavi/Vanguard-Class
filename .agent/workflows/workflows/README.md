# Vanguard Workflows

Reusable workflow definitions for common operations.

> **Library vs. Executable**
>
> - **Library (Here):** Templates and Documentation.
> - **Global Executable:** `~/.agent/workflows` (Machine-wide)
> - **Project Executable:** `[Project]/.agent/workflows` (Overrides)
>
> **To use:** Copy these files to an executable directory.

## Format

Each workflow follows this structure:

```yaml
---
description: [What this workflow does]
---
[Step-by-step instructions]
```

## Available Workflows

| Workflow             | Purpose                           |
| -------------------- | --------------------------------- |
| `refresh-context.md` | Load context layers by voice      |
| `version-end.md`     | Complete version release protocol |
| `new-project.md`     | Scaffold a new project            |
| `security-scan.md`   | Run security audit                |
| `handoff.md`         | Voice-to-voice handoff protocol   |

## Turbo Annotations

- `// turbo` Auto-run the next step
- `// turbo-all` Auto-run all steps

---

_Vanguard Class Workflows_
