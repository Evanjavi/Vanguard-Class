# Project Scaffold Template

**Version:** 1.0.0  
**Purpose:** Bootstrap any new project with Vanguard Class structure.

---

## Quick Start

1. Copy this template to your new project root
2. Rename `PROJECT_DNA.md` and fill in project details
3. Initialize git: `git init && git add . && git commit -m \"v0.1.0: Initial scaffold\"`
4. Start work using `/refresh-context`

---

## Required Files

### PROJECT_DNA.md

The project's \"seed vault.\" Contains:

- Project name and purpose
- Tech stack
- Current version
- Key artifacts index

### WBS.md (Work Breakdown Structure)

Master task list. Format:

```markdown
# [Project] WBS

## Current Version: v0.x.x

### Active Sprint

- [ ] Feature 1
- [ ] Feature 2

### Backlog

- [ ] Future feature

### Completed

- [x] Done feature
```

### THE_BOOK.md

Project history. Append-only chronicle:

```markdown
# The Book of [Project]

## v0.1.0 [Date]

- Initial scaffold
- Key decisions made

## v0.2.0 [Date]

- Features added
- Lessons learned
```

---

## Recommended Structure

```
project-root/
├─ .agent/
│   ├─ scripts/         # Automation scripts
│   └─ workflows/       # Reusable workflows
├─ .antigravity/        # Chorus workflow (gitignored)
│   ├─ task.md          # Active sprint tracker
│   └─ implementation_plan.md
├─ Chorus Documents/    # Voice protocols (copy from Playbook)
├─ src/                 # Source code
├─ docs/                # Documentation
├─ PROJECT_DNA.md       # Project identity
├─ WBS.md               # Work Breakdown Structure
├─ THE_BOOK.md          # Project history
└─ README.md            # Public readme
```

---

## Required .gitignore Additions

Add these lines to your project's `.gitignore`:

```gitignore
# Antigravity / Chorus Workflow (conflict prevention)
*.resolved
*.resolved.*
*.metadata.json
```

> **Note:** Do NOT gitignore `.antigravity/` — voices need access to `task.md` for coordination. The folder contains workflow files, not secrets.

---

## Phase Gates

| Phase             | Gate            | Deliverables      |
| ----------------- | --------------- | ----------------- |
| **0. Scaffold**   | DNA + WBS exist | Basic structure   |
| **1. Foundation** | Build passes    | Core architecture |
| **2. Features**   | Tests pass      | Working MVP       |
| **3. Polish**     | Claude review   | UI/UX complete    |
| **4. Release**    | Ana review      | v1.0.0 ready      |

---

## Version Protocol

- **v0.x** Experimental, breaking changes allowed
- **v1.0** Stable, first public milestone
- **Patch (v0.x.y)** Bug fixes only

---

_Vanguard Class Project Scaffold v1.0.0_
