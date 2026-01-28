---
description: Read the active task and implementation plan for context synchronization
---

# Read Tasks Workflow

This workflow forces the agent to read the critical task definitions and operational context.

## Execution

1. **Identify Project:**
   - Determine the active project (e.g., `CevicheBar`).

2. **Read Task Context:**
   - Use `view_file` to read `[Project]/.antigravity/task.md`.
   - Use `view_file` to read `[Project]/.antigravity/implementation_plan.md`.

3. **Read Operational Context:**
   - Use `view_file` to read `VanguardPlaybook/docs/protocols/OPERATIONAL_LOOP.md`.
   - Identify which of the 7 phases we're currently in:
     1. STRATEGIZE (Plan + Chorus Review)
     2. ALIGN (Broadcast Check)
     3. ASSIGN (Task Codes)
     4. PREPARE (Context Load)
     5. EXECUTE (Build)
     6. CONSOLIDATE (Verify)
     7. REFLECT (Distill)

4. **Report:**
   - State the current phase (e.g., "Phase 3: ASSIGN")
   - Summarize the active task codes or next steps
   - Identify any blockers or gates
