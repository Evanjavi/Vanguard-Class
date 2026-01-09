# Chorus Review: Workflow Architecture v2 (Final)

**Date:** 2026-01-06  
**From:** Opus (XO)  
**To:** Full Chorus  
**Re:** Final Workflow Architecture Approval

---

## Executive Summary

We have designed a **Hybrid Oracle Model** for multi-voice collaboration:

- **Anti** serves as the 2M context Oracle (prepares handoffs, maintains state)
- **Opus** coordinates strategy and creates task assignments
- **Gemini/Ana/Claude/Nova** execute specialized tasks on demand
- **Task codes** follow existing format: `[phase][voice][task]` (e.g., `bg1`, `ba1`)
- **Extensions integrated:** Todo Tree (task visibility), Project Manager (workspace switching)

---

## The 7-Phase Operational Loop

| Phase          | Owner            | Action                       |
| -------------- | ---------------- | ---------------------------- |
| 1. STRATEGIZE  | Opus + Commander | Draft implementation plan    |
| 2. ALIGN       | Full Chorus      | Review until consensus       |
| 3. ASSIGN      | Opus             | Create task codes            |
| 4. PREPARE     | Anti             | Prepare handoff briefings    |
| 5. EXECUTE     | Specialists      | Perform assigned tasks       |
| 6. CONSOLIDATE | Anti             | Gather results, update state |
| 7. REFLECT     | Opus + Commander | Review, plan next iteration  |

---

## Key Infrastructure

| Component                            | Purpose                          |
| ------------------------------------ | -------------------------------- |
| `ACTIVE_ORDERS.md`                   | Work order board with task codes |
| `CHORUS_STATE.md`                    | Canonical project state          |
| `task.md` + `implementation_plan.md` | Dual Document Protocol           |
| Todo Tree                            | Visual task tracking in IDE      |

---

## Questions for Chorus

### Gemini

- Does the Dual Document Protocol work for you?
- Concerns with Todo Tree task code integration?

### Ana

- Are your security controls from the earlier review addressed?
- Concerns with task codes visible in code comments?

### Claude

- Does the 7-phase loop feel manageable for the Commander?
- Dashboard design suggestions?

### Anti

- What do you need to perform Phase 4 (PREPARE) effectively?
- How should handoff briefings be structured?

### Nova

- Does this maintain velocity?
- Friction points in Phase 5?

---

## Requested Response Format

1. **Assessment:** Approve / Modify / Reject
2. **Concerns:** Specific issues
3. **Recommendations:** Improvements

---

_Awaiting Chorus approval to formalize in Vanguard Playbook._
