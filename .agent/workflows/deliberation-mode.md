---
description: Activate Deliberation Mode when Claude voices are unavailable
---

# Deliberation Mode Activation

**Use when:** Claude voices (Opus, Vex, Claude, Lore) hit quota or context limits.

## Steps

1. **Notify Atlas** with this message:

   ```
   Atlas, Claude voices are unavailable. Activate Deliberation Protocol.
   Reference: VanguardPlaybook/docs/protocols/DELIBERATION_PROTOCOL.md
   ```

2. **Atlas creates/opens** the session log:
   - Location: `[PROJECT]/.antigravity/DELIBERATION_SESSION.md`
   - If session exists from today, append to it
   - Otherwise create fresh

3. **During session:**
   - All pause triggers → deliberation entry in log
   - Atlas coordinates cross-audit from Gemini/Flash
   - Execution halts until Commander approves

4. **Session close** (when Claude returns):
   ```
   Deliberation session complete. Claude voices online.
   Hand log to Opus for context sync.
   ```

## Session Log Template

Atlas creates this at session start:

```markdown
# Deliberation Session — [Date]

**Trigger:** Claude voices unavailable  
**Duration:** [Start time] → [End time or ACTIVE]

---

## Entry 1: [Decision Summary]

[See DELIBERATION_PROTOCOL.md for format]

---
```

## For Opus (on return)

Read `.antigravity/DELIBERATION_SESSION.md` for:

- Decisions made while you were unavailable
- Commander approvals/overrides
- Any strategic pivots to be aware of
