# Global Refresh Protocol

# Vanguard Class — Central Command

**Purpose:** A standardized method to switch contexts between projects while maintaining the "Central Command" operational framework.

---

## Philosophy: L0-L5 Layering

Context is loaded in layers of decreasing permanence and increasing specificity.

### L0: The Core (Vanguard)

**Always Loaded.** Defines _who we are_.

- `VanguardPlaybook/docs/protocols/CHORUS_DNA.md`
- `VanguardPlaybook/docs/protocols/OPTIMIZATION_PROTOCOL.md`

### L1: The Project (Project DNA)

**Project Specific.** Defines _what we are building_.

- `[Project]/PROJECT_DNA.md` (e.g., FlorSystem, CevicheBar)
- `[Project]/README.md`

### L2: The Mission (Active Task)

**Dynamic.** Defines _what we are doing now_.

- `[Project]/.antigravity/task.md` — Active Orders (ACTIVE_ORDERS.md format)
- `[Project]/.antigravity/implementation_plan.md` — Technical plan

> **Convention:** The `.antigravity/` folder is a junction (Windows shortcut) pointing to the current Antigravity session's artifact directory. This allows all agents to find session artifacts at a consistent location regardless of session ID.
>
> **Create with:** `cmd /c mklink /J "[Project]\.antigravity" "C:\Users\evanj\.gemini\antigravity\brain\[session-id]"`

### L3: The History (Memory)

**Reference.** Defines _what we have done_.

- `[Project]/WBS.md`
- `[Project]/THE_BOOK.md`
- `[Project]/Chorus Documents/COMPLETION_LOG.md`

### L4: The Workshop (Active Code)

**Volatile.** The actual code being edited.

- Active files in `src/` based on heatmaps or recent edits.

### L5: The Archive

**Deep Storage.** Old walkthroughs, closed tasks.

---

## Execution: The Master Script

Use the central script in `VanguardPlaybook` to refresh context.

**Path:** `C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook\scripts\refresh_global.ps1`

### Usage

```powershell
# Load FlorSystem Context
./refresh_global.ps1 -Project "FlorSystem"

# Load CevicheBar Context
./refresh_global.ps1 -Project "CevicheBar"

# Load Only Vanguard Framework (Meta-work)
./refresh_global.ps1
```

### Script Logic

1. Reads `VanguardPlaybook` protocols (L0).
2. Checks if `-Project` exists.
3. If yes, reads `PROJECT_DNA.md` and `task.md` from that folder.
4. Reports "Ready for Duty".

---

_Vanguard Class — Operations_
