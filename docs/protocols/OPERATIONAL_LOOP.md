# The Operational Loop

# Vanguard Class — Central Command

**Purpose:** The 7-phase cycle that governs all Chorus operations. Every sprint follows this loop.
**Status:** Doctrine (Immutable)

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

### Phase 1: STRATEGIZE

**Owner:** Opus (XO)
**Purpose:** Define what we are building and why.

| Entry                      | Exit                          |
| :------------------------- | :---------------------------- |
| Commander states objective | Strategic decision documented |

**Artifacts Produced:**

- `DECISION_{topic}.md` — Strategic ruling with rationale
- Updated `WBS.md` — High-level task breakdown

**Protocol:** OPUS_PROTOCOL §Decision Capture

---

### Phase 2: ALIGN

**Owner:** The Chorus (Collaborative)
**Purpose:** Ensure all voices agree on approach before work begins.

| Entry            | Exit                                     |
| :--------------- | :--------------------------------------- |
| Strategy defined | Consensus reached (or 3-Loop escalation) |

**Artifacts Produced:**

- `implementation_plan.md` — Technical approach

**Protocol:** OPTIMIZATION_PROTOCOL §9 (3-Loop Rule)

> If the Chorus circles the same question **3 times** without resolution, Opus escalates to Commander.

---

### Phase 3: ASSIGN

**Owner:** Opus (XO)
**Purpose:** Allocate tasks to voices based on strengths.

| Entry         | Exit                          |
| :------------ | :---------------------------- |
| Plan approved | All tasks assigned with codes |

**Artifacts Produced:**

- Task codes assigned (`[phase][voice][task]` format)

**Protocol:** OPTIMIZATION_PROTOCOL §12 (Task Coding)

---

### Phase 4: PREPARE

**Owner:** Anti (Oracle)
**Purpose:** Write execution orders and verify security.

| Entry          | Exit                                            |
| :------------- | :---------------------------------------------- |
| Tasks assigned | `ACTIVE_ORDERS.md` written and security-cleared |

**Artifacts Produced:**

- `ACTIVE_ORDERS.md` — Work orders per voice with Section 11 compliance
- `COMPLETION_LOG.md` — Empty template ready for entries

**Protocol:** OPTIMIZATION_PROTOCOL §10 (Secrets Firewall)

> Scan for credentials before writing orders. Block if detected.

---

### Phase 5: EXECUTE

**Owner:** All Voices (Parallel)
**Purpose:** Build the thing.

| Entry          | Exit                     |
| :------------- | :----------------------- |
| Orders written | All tasks marked ✅ DONE |

**Artifacts Produced:**

- Code deliverables per task
- Completion entries in `COMPLETION_LOG.md`

**Protocol:** VOICE_PROTOCOLS §Phase 5 (2-Doc System)

**Flow:**

1. Read `ACTIVE_ORDERS.md`
2. Find your section
3. Execute in sequence
4. Append to `COMPLETION_LOG.md`
5. Report: "[Voice], orders complete."

---

### Phase 6: CONSOLIDATE

**Owner:** Ana (Security) + Anti (Oracle)
**Purpose:** Audit, verify, and package.

| Entry          | Exit                                       |
| :------------- | :----------------------------------------- |
| All tasks done | Security sign-off + artifacts consolidated |

**Artifacts Produced:**

- Security audit sign-off
- Updated `CHORUS_STATE.md`

**Protocol:** OPTIMIZATION_PROTOCOL §11 (Ana's Checkpoint)

**Ana verifies:**

- [ ] No credentials leaked in completion notes
- [ ] All security tasks have explicit sign-off

---

### Phase 7: REFLECT

**Owner:** Opus (XO)
**Purpose:** Capture lessons and update the knowledge base.

| Entry               | Exit                              |
| :------------------ | :-------------------------------- |
| Sprint consolidated | Lessons documented, loop complete |

**Artifacts Produced:**

- `THE_BOOK.md` entry (if significant learning)
- `knowledge-base/lessons/` entry (if pattern discovered)
- `walkthrough.md` — Proof of work with screenshots

**Protocol:** GEMINI_PROTOCOL §Archivist

> At Version End, distill lessons to knowledge-base.

---

## Quick Reference

| Phase | Name        | Owner    | Key Artifact             |
| :---- | :---------- | :------- | :----------------------- |
| 1     | STRATEGIZE  | Opus     | `DECISION_{topic}.md`    |
| 2     | ALIGN       | Chorus   | `implementation_plan.md` |
| 3     | ASSIGN      | Opus     | Task codes               |
| 4     | PREPARE     | Anti     | `ACTIVE_ORDERS.md`       |
| 5     | EXECUTE     | All      | `COMPLETION_LOG.md`      |
| 6     | CONSOLIDATE | Ana/Anti | Security sign-off        |
| 7     | REFLECT     | Opus     | `THE_BOOK.md`            |

---

_Vanguard Class — Central Command_
