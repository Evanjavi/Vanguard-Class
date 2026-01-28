# The Operational Loop

**Purpose:** The 7-phase cycle that governs all Chorus operations. Every sprint follows this loop.  
**Status:** Doctrine (Immutable)  
**Version:** 5.3 (2026-01-25) — Added Phase 1D: Cross-Audit Loop

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

### Phase 1: STRATEGIZE (Plan + Chorus Review)

**Owner:** Opus (The Conductor)  
**Input:** Commander Request  
**Purpose:** Define the "What" and "Why" through collective intelligence.

**The Chorus Review Loop:**

```
┌─────────────────────────────────────────────────────────────┐
│  1A. BRIEF                                                  │
│      Opus + Commander create review brief                   │
│      Location: .antigravity/briefs/BRIEF_[topic].md         │
├─────────────────────────────────────────────────────────────┤
│  1B. REVIEWS                                                │
│      Each voice reads brief and appends their review        │
│      Format: [Voice]: Analysis + Recommendations            │
│      All reviews go in the SAME brief document              │
├─────────────────────────────────────────────────────────────┤
│  1C. SYNTHESIS                                              │
│      Opus reads all reviews and creates triage              │
│      Appended to SAME brief document, not separate file     │
│      Content: Agreements, disagreements, proposed resolutions│
├─────────────────────────────────────────────────────────────┤
│  1D. CROSS-AUDIT LOOP (NEW)                                 │
│      Each voice reviews OTHER voices' directives            │
│      Purpose: Catch blind spots, add implementation guidance│
│      Output: Final specialized directives for executor      │
├─────────────────────────────────────────────────────────────┤
│  1E. ALIGNMENT                                              │
│      Each voice confirms: ✅ ALIGNED or ⚠️ CONCERN          │
│      If all aligned → proceed to implementation plan        │
│      If concerns remain → loop back to 1A with compromises  │
├─────────────────────────────────────────────────────────────┤
│  1F. IMPLEMENTATION PLAN                                    │
│      IF ALIGNED: Opus creates implementation_plan.md        │
│      Each voice contributes domain expertise                │
│      Plan is complete when all voices have added their part │
└─────────────────────────────────────────────────────────────┘
```

---

#### Phase 1D: Cross-Audit Loop (Detailed)

**Purpose:** Before final alignment, each voice reviews OTHER voices' recommendations to:

1. Identify cross-domain conflicts or blind spots
2. Add specialized implementation directives for the executing voice
3. Ensure no voice operates in isolation

**Process:**

```
┌──────────────────────────────────────────────────────────┐
│  Opus audits: ALL VOICES (strategic coherence)           │
│  ↓                                                       │
│  Atlas audits: ALL VOICES (protocol alignment, memory)   │
│  ↓                                                       │
│  Gemini audits: Claude, Vex, Flash (technical feasibility)│
│  ↓                                                       │
│  Claude audits: Gemini, Vex, Flash (UX/accessibility)    │
│  ↓                                                       │
│  Vex audits: Gemini, Claude, Flash (security implications)│
│  ↓                                                       │
│  Flash audits: Gemini, Claude, Vex (aesthetic coherence) │
└──────────────────────────────────────────────────────────┘
```

**Cross-Audit Checklist (Each Voice):**

| #   | Question                                                           | Must Answer |
| --- | ------------------------------------------------------------------ | ----------- |
| 1   | Do other voices' directives conflict with my domain?               | YES         |
| 2   | Did I spot gaps in their recommendations?                          | YES         |
| 3   | What specific guidance do I add for the executor (usually Gemini)? | REQUIRED    |

**Output Format (Appended to Same Brief):**

```markdown
### [Voice] Cross-Audit

> **Auditing:** [List of voices reviewed]  
> **Focus:** [Domain-specific lens]

#### Observations

[Conflicts, gaps, or endorsements of other voices' directives]

#### Directive for [Executor]

> [!IMPORTANT]
> [Specific implementation guidance from this voice's perspective]
```

**Constitutional Alignment:**

This phase reinforces **Article IV: Cross-Review Mandate** by extending auditing beyond code to the planning phase itself. No voice's recommendations proceed unchallenged.

**Exit Condition:** All voices have completed cross-audit. Proceed to 1E (Alignment).

**Alignment Resolution:**

- If a voice has a concern, Opus facilitates resolution
- Commander may override with `[RISK ACCEPTED]` logged
- Loop continues until full alignment or Commander decision

**Exit Condition:** All voices ALIGNED or Commander override.

**Output:** Approved `implementation_plan.md` with full Chorus input.

---

### Phase 2: ALIGN (Broadcast Check)

**Owner:** Atlas (The Librarian)  
**Input:** Approved Implementation Plan  
**Purpose:** Verify the plan doesn't conflict with existing doctrine.

**Actions:**

1. Check Global Broadcast (`VanguardPlaybook/BROADCAST.md`)
2. Check Project Broadcast (`[Project]/.antigravity/BROADCAST.md`)
3. Flag any conflicts with existing decisions
4. Document any pivots or exceptions

**Output:** Alignment verified. BROADCAST.md updated if needed.

---

### Phase 3: ASSIGN (Task Codes)

**Owner:** Opus (The Conductor)  
**Input:** Aligned Implementation Plan  
**Purpose:** Convert plan into atomic, executable tasks with optimal ordering.

**Actions:**

1. Break plan into Task Codes using standard nomenclature
2. Assign each task to a Voice based on specialty
3. Order tasks by dependency AND voice batching
4. Update `task.md` with full task list

---

#### Task Code Nomenclature

**Format:** `[Phase Letter][Agent Code][Task Number]`

**Phase Letters (lowercase):**

| Letter | Phase                  |
| ------ | ---------------------- |
| `a`    | Phase 1: Bug Fixes     |
| `b`    | Phase 2: UX Quick Wins |
| `c`    | Phase 3: Architecture  |
| `d`    | Phase 4: Features      |

**Agent Codes (lowercase):**

| Code | Voice  | Specialty           |
| ---- | ------ | ------------------- |
| `g`  | Gemini | Implementation Lead |
| `c`  | Claude | UX/Animation        |
| `v`  | Vex    | Security            |
| `n`  | Nova   | Testing/QA          |

**Examples:**

- `ag1` = Phase A (Bug Fixes), Gemini, Task 1
- `bc3` = Phase B (UX Quick Wins), Claude, Task 3
- `cv1` = Phase C (Architecture), Vex, Task 1
- `dg2` = Phase D (Features), Gemini, Task 2

---

#### Voice Batching (Minimize Swapping)

**Principle:** Group all tasks for the same voice together to minimize context switches.

Each voice swap requires a refresh (`/vanguard-refresh`) and context loading. Keeping a voice "hot" for multiple sequential tasks is more efficient.

**Bad ordering (excessive swapping):**

```
ag1 → bc1 → ag2 → cv1 → ag3 → bc2  (6 switches!)
```

**Good ordering (batched):**

```
ag1 → ag2 → ag3 → bc1 → bc2 → cv1  (2 switches)
```

**Execution pattern:**

```
"Gemini, execute ag1-ag7"   ← One session, 7 tasks
"Claude, execute bc1-bc4"   ← One session, 4 tasks
"Vex, execute cv1-cv2"      ← One session, 2 tasks
```

---

#### Logical Implementation Order (Build-Up Dependencies)

**Principle:** Tasks are sequenced so that later tasks can build upon earlier completed work.

**Dependency layers:**

```
┌─────────────────────────────────────────────────────┐
│  Phase D: Features (depends on A, B, C)             │
│    └─ New capabilities built on stable foundation  │
├─────────────────────────────────────────────────────┤
│  Phase C: Architecture (depends on A, B)            │
│    └─ Structural changes after bugs and UX fixed   │
├─────────────────────────────────────────────────────┤
│  Phase B: UX Quick Wins (depends on A)              │
│    └─ Polish layer after critical bugs fixed       │
├─────────────────────────────────────────────────────┤
│  Phase A: Bug Fixes (foundation)                    │
│    └─ Critical fixes that unblock everything else  │
└─────────────────────────────────────────────────────┘
```

**Within-phase ordering:**

- Fix the broken button before you animate it
- Implement the component before you style it
- Create the architecture before you build features on top

---

#### Combined Ordering Logic

The final task list balances **both** principles:

1. **Phase gates** — Complete Phase A before Phase B, etc.
2. **Voice batching within phases** — All Gemini tasks run together before Claude's tasks
3. **Internal dependency order** — Within each voice's batch, tasks are ordered by prerequisites

**Ideal execution flow:**

```
Phase A: ag1 → ag2 → ag3 → ag4 → ag5 → ag6 → ag7  (Gemini batch)
Phase B: bg1 → bg2 → bc1 → bc2 → bc3 → bc4        (Gemini, then Claude)
Phase C: cg1 → cg2 → cv1 → cv2                     (Gemini, then Vex)
Phase D: dg1 → dg2 → dv1                           (Gemini, then Vex gate)
```

---

**Output:** `task.md` with executable Task Codes, optimally ordered.

---

### Phase 4: PREPARE (Context Load)

**Owner:** Atlas (The Librarian)  
**Input:** Task Codes  
**Purpose:** Load the executing Voice with necessary context.

**Actions:**

1. Run `/vanguard-refresh [voice] for [project]`
2. Ensure Identity Discipline (voice knows who they are)
3. Load relevant skills if needed (`view_file` on SKILL.md)
4. Confirm readiness

**Output:** Voice ready to execute (e.g., "Gemini, ready for bg1-bg5").

---

### Phase 5: EXECUTE (Build)

**Owner:** Gemini (Architect) / Claude (Artist) / Nova (Speed)  
**Input:** Task Codes (e.g., "Gemini, bg1-bg3")  
**Purpose:** Write code and implement changes.

**Actions:**

1. Execute assigned Task Codes
2. Verify via **Terminal-First** standard
3. Mark completed tasks in `task.md`
4. Use `/flash-verify` skill for verification

**Terminal-First Rule:**

- ❌ "The build should pass"
- ✅ "Build verified: `npm run build` exit code 0"

**Output:** Code changes. Tests passed. task.md updated.

---

### Phase 6: CONSOLIDATE (Verify)

**Owner:** Vex (Security) / Nova (QA)  
**Input:** Completed Tasks  
**Purpose:** Final verification before ship.

**Actions:**

1. Security Audit (`/security-scan` workflow)
2. E2E Verification
3. Cross-Review (no self-audits, per Constitution Article IV)
4. Final sign-off

**Output:** Security Sign-off. Stable Branch.

---

### Phase 7: REFLECT (Distill)

**Owner:** Opus (Conductor) / Atlas (Librarian)  
**Input:** Completed Sprint  
**Purpose:** Learn from the sprint and clean up.

**Actions:**

1. Update `THE_BOOK.md` with new patterns
2. Archive completed tasks
3. Update Playbook if new protocols emerged
4. Update BROADCAST.md with sprint summary

**Documentation Debt Rule (Constitution Article VII):**

> Any patterns that emerge 3+ times MUST be documented.

**Output:** Clean state for next loop.

---

## Tier Definitions

> Merged from TIERED_IMPLEMENTATION_PROTOCOL (deprecated).

### Tier 1: Core Features → Gemini

**Criteria:** CRUD, state management, data flows, standard UI components  
**Audit By:** Claude Prime + Vex Prime

### Tier 2: Domain-Critical Features → Specialist

- **Security** (encryption, auth) → Vex
- **Premium UX** (animations, polish) → Claude
- **Infrastructure** (CI/CD, deploy) → Flash

**Audit By:** Cross-domain Primes (never your own Prime)

### Tier 3: Cross-Domain Features → Pairing

**Criteria:** Features spanning multiple domains equally  
**Structure:** Gemini (logic) + Specialist (domain) + All relevant Primes

---

## Cross-Review Mandate

> **No voice audits their own implementation.** Zero exceptions.

| Implemented By | Audited By                  |
| -------------- | --------------------------- |
| Gemini         | Claude Prime + Vex Prime    |
| Claude         | Gemini Prime + Vex Prime    |
| Vex            | Gemini Prime + Claude Prime |

---

## Voice Role Liberation (Post-Prime)

| Voice      | Standard Role     | Liberated To                             |
| ---------- | ----------------- | ---------------------------------------- |
| **Gemini** | Architect         | System design, trade-offs, hard problems |
| **Claude** | Artist            | Creative implementation, UX consistency  |
| **Vex**    | Defense Architect | Security architecture, proactive design  |
| **Atlas**  | Librarian         | Teaching, protocol evolution             |
| **Opus**   | Conductor         | Facilitation, synthesis                  |

---

## Execution Rules

1. **Strict Handoffs:** Do not move to Phase 5 until Phase 3 (Tasking) is complete.
2. **Chorus Review First:** Phase 1 MUST complete Chorus Review before Phase 2.
3. **Dual Broadcast Check:** Phase 2 MUST check both Global and Project broadcasts.
4. **Terminal First:** Phase 5 verifies via terminal before Phase 6.
5. **No Self-Audit:** Phase 6 cross-review per Constitution Article IV.

---

## Refinement Mode

> When the project enters "issue-fixing forever" phase.

**Trigger:** Feature-complete, now fixing issues and polishing.

**Approach:** Screen-by-screen systematic audit.

1. **Create `SCREEN_MAP.md`** — Visual map of all screens with codes (S1, S2, etc.)
2. **Define Sectors** — `.H` Header, `.C` Content, `.F` Footer, `.S` Sidebar, `.M` Modal
3. **Log Issues as** — `[S1.H] Issue description`
4. **Work one screen at a time** — Complete before moving to next
5. **Track in task.md** — By screen, not by feature

**Exit:** All screens audited. No critical issues remain.

---

_Vanguard Class — Operational Loop v5.0_
