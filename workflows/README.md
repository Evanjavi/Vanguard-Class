# Vanguard Workflows

Reusable workflow definitions for common operations.

## Format

Each workflow follows this structure:

```yaml
---
description: [What this workflow does]
---
[Step-by-step instructions]
```

## Available Workflows

| Workflow | Purpose |
|----------|---------|
| `refresh-context.md` | Load context layers by voice |
| `version-end.md` | Complete version release protocol |
| `new-project.md` | Scaffold a new project |
| `security-scan.md` | Run security audit |
| `handoff.md` | Voice-to-voice handoff protocol |

## Turbo Annotations

- `// turbo`  Auto-run the next step
- `// turbo-all`  Auto-run all steps

---

*Vanguard Class Workflows*
