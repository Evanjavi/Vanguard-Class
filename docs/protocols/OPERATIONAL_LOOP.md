# The Operational Loop

# Vanguard Class — Central Command

**Purpose:** The 7-phase cycle that governs all Chorus operations. Every sprint follows this loop.
**Status:** Doctrine (Immutable)
**Version:** 4.0 (2026-01-13)

---

## The 7 Phases

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   1. STRATEGIZE  →  2. ALIGN  →  3. ASSIGN  →  4. PREPARE  │
│         ↑                                           ↓       │
│         │                                           │       │
│   7. REFLECT  ←  6. CONSOLIDATE  ←  5. EXECUTE ←───┘       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

## Phase Definitions

### Phase 1: STRATEGIZE (Plan)

**Owner:** Opus (Strategy)
**Input:** User Request (Commander)
**Action:** Define the "What" and "Why".
**Output:** Updated `implementation_plan.md` (Strategy Section).

### Phase 2: ALIGN (Broadcast)

**Owner:** Anti (Memory)
**Input:** Implementation Plan
**Action:** Check for conflicts with Global Law (`VanguardPlaybook/BROADCAST.md`) and Project Strategy (`[Project]/.antigravity/BROADCAST.md`).
**Output:** Alignment verified. Pivots documented in Project Broadcast if needed.

### Phase 3: ASSIGN (Task)

**Owner:** Opus (Strategy)
**Input:** Aligned Plan
**Action:** Break down plan into atomic tasks. Assign to Voices.
**Output:** Updated `task.md` with Task Codes (e.g., `bg1`, `co2`).

### Phase 4: PREPARE (Context)

**Owner:** Anti (Memory)
**Input:** Task Codes
**Action:** Load context. Ensure Identity Discipline.
**Output:** Voice ready to execute (e.g., "Anti, Expecting orders").

### Phase 5: EXECUTE (Build)

**Owner:** Gemini (Builder) / Claude (Artist) / Nova (Speed)
**Input:** Task Codes (e.g., "Gemini, bg1-bg3")
**Action:** Write code. Verify via **Terminal-First** standard.
**Output:** Code changes. Tests passed. `task.md` checkboxes marked.

### Phase 6: CONSOLIDATE (Verify)

**Owner:** Ana (Security) / Nova (QA)
**Input:** Completed Tasks
**Action:** Security Audit (`/security-scan`). E2E Verification.
**Output:** Security Sign-off. Stable Branch.

### Phase 7: REFLECT (Distill)

**Owner:** Opus (Strategy) / Anti (Memory)
**Input:** Completed Sprint
**Action:** Update `THE_BOOK.md`. Archive old tasks. Update Playbook if new patterns emerge.
**Output:** Clean state for next loop.

---

## Execution Rules

1.  **Strict Handoffs:** Do not move to Phase 5 until Phase 3 (Tasking) is complete.
2.  **Dual Broadcast Check:** Phase 2 (Align) MUST check both Global and Mission broadcasts.
3.  **Terminal First:** Phase 5 (Execute) verifies via terminal before Phase 6 (Consolidate).
4.  **Same-Agent Parallelism:** Voices sharing the same Model Agent (Standard + Prime) may execute in parallel.
    - _Example:_ Atlas (Standard) + Atlas Prime (Invariant) = ✅ Parallel
    - _Example:_ Gemini (Standard) + Claude (Standard) = ❌ Sequential (Must switch agent)

---

_Vanguard Class — Central Command_
