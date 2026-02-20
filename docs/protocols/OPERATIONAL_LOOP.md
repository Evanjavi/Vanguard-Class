# The Operational Loop

**Purpose:** The 6-phase cycle that governs all Chorus operations. Every sprint follows this loop.  
**Status:** Doctrine (Immutable)  
**Version:** 7.0 (2026-02-20) — Formations System, Pre-Flight Phase, Prime Deferral, Phase Modernization

---

## The 6 Phases

```
┌───────────────────────────────────────────────────────────┐
│                                                           │
│   1. STRATEGIZE  →  2. ASSIGN  →  3. EXECUTE             │
│         ↑                              ↓                  │
│         │                              │                  │
│   6. REFLECT  ←  5. CONSOLIDATE  ←  4. ───┘              │
│                                                           │
└───────────────────────────────────────────────────────────┘
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
│      Formation selected (see REVIEW_FORMATIONS.md)          │
├─────────────────────────────────────────────────────────────┤
│  1B. REVIEWS                                                │
│      Each voice reads brief and appends their review        │
│      Order: Formation-dependent (Opus first, Vex last)      │
│      All reviews go in the SAME brief document              │
├─────────────────────────────────────────────────────────────┤
│  1C. CROSS-AUDIT LOOP (MANDATORY)                           │
│      Voice-agnostic: any voice audits any other freely      │
│      Order: INVERTED middle from 1B (Opus first, Vex last)  │
│      All cross-audits appended to SAME brief document       │
│      Status: MANDATORY — Cannot skip to synthesis           │
├─────────────────────────────────────────────────────────────┤
│  1D. PRE-FLIGHT (Atlas)                                     │
│      Atlas reviews proposed plan against THE_BOOK,          │
│      DECISION_LOG, and documented failure patterns          │
│      Flags historical collisions before synthesis           │
├─────────────────────────────────────────────────────────────┤
│  1E. SYNTHESIS + ALIGNMENT (Opus + Commander)               │
│      Commander returns to Opus after Pre-Flight complete    │
│      Opus presents agreements, conflicts, and decisions     │
│      Commander makes final call: loop back or proceed       │
├─────────────────────────────────────────────────────────────┤
│  1F. CONDENSATION                                           │
│      Opus synthesizes into FINAL executor-ready plan        │
│      Removes redundancy, preserves actionable checklists    │
│      Target: <300 lines — implementation_plan.md            │
│      Original brief archived for reference                  │
└─────────────────────────────────────────────────────────────┘
```

---

#### Review Formations (Phase 1B)

**Reference:** [REVIEW_FORMATIONS.md](file:///c:/Users/evanj/OneDrive/Desktop/VanguardPlaybook/docs/protocols/REVIEW_FORMATIONS.md)

**Fixed positions (invariant):**

- **Opus** always goes **first** — frames the brief, sets strategic intent
- **Vex** always goes **last** — wide-net review with maximum context

The **4 middle voices** (Claude, Gemini, Atlas, Flash) are ordered based on the formation selected by the Commander at sprint kickoff. Formation choice depends on the nature of the sprint (UX polish, performance, integration, etc.).

**Brief header must include:**

```markdown
> **Formation:** [Letter] ([Name]) — [rationale]
> **Review Order:** Opus → [middle voices per formation] → Vex
```

---

#### Vex Wide-Net Review (Phase 1B — Last Position)

Vex's 1B review is **not domain-limited**. With the Extended Thinking model upgrade, Vex reviews across all domains: security, architecture, UX risk, data model gaps, and feasibility concerns. This makes Vex's 1B a de facto first cross-scan, not just a security checklist.

---

#### Phase 1C: Cross-Audit Loop (Detailed)

**Purpose:** Before synthesis, voices freely audit OTHER voices' recommendations. This is the Chorus's primary quality gate — catching blind spots, tensions, and gaps that no single voice can see.

**Core Principle: Voice-Agnostic Free Audit**

Cross-audit is NOT constrained by specialty. Any voice may challenge, endorse, or add nuance to ANY other voice's recommendations — regardless of domain. A security voice may have valid UX observations. A performance voice may spot architectural risks. The goal is collective intelligence, not siloed reviews.

> [!IMPORTANT]
> **No role gatekeeping.** A voice does not need "permission" to audit outside their specialty. The only requirement is that observations are substantive, not performative.

**Inverted Ordering Rule:**

The cross-audit uses the **inverse** of the 1B formation order for the 4 middle voices. The voice that went earliest in 1B (least context) goes latest in 1C (most context, informed response opportunity). Fixed positions remain: Opus first, Vex last.

**Example (Formation A: Reality First):**

| Phase          | Order                                            |
| -------------- | ------------------------------------------------ |
| 1B Review      | Opus → **Gemini → Atlas → Claude → Flash** → Vex |
| 1C Cross-Audit | Opus → **Flash → Claude → Atlas → Gemini** → Vex |

**Orchestration Flow:**

1. **Opus goes first** — reads all 1B reviews and appends cross-audit to the brief
2. **Commander distributes** — sends the brief (with Opus's cross-audit) to other voices in inverted order
3. **Other voices append** — each voice reads ALL prior reviews AND cross-audits, then appends their own
4. **Vex goes last** — final cross-audit with maximum context
5. **Commander returns to Opus** — when all cross-audits are collected, proceed to 1D (Pre-Flight)

**Why Opus goes first:** Opus has the strategic overview and sets the tone. Other voices then have both the original reviews AND Opus's cross-audit as context, enabling deeper second-pass analysis.

**Anti-Bias Protocol (1E Synthesis):**

> When a voice appears in both 1B and 1C phases (e.g., Vex), the synthesizer (Opus) must evaluate each contribution independently. Volume does not equal weight. Recency does not equal priority. Arguments are weighed on merit, evidence, and alignment with project goals — not on position in the review queue.

**Cross-Audit Checklist (Each Voice):**

| #   | Question                                              | Must Answer |
| --- | ----------------------------------------------------- | ----------- |
| 1   | Do other voices' directives conflict with each other? | YES         |
| 2   | Did I spot gaps or tensions in their recommendations? | YES         |
| 3   | What specific guidance do I add for the executor?     | REQUIRED    |

**Output Format (Appended to Same Brief):**

```markdown
### [Voice] Cross-Audit

> **Auditing:** [List of voices reviewed]

#### Observations

[Conflicts, gaps, tensions, or endorsements]

#### Directive for [Executor]

> [!IMPORTANT]
> [Specific implementation guidance]
```

**Exit Condition:** All participating voices have completed their cross-audit. Commander routes to Atlas for 1D (Pre-Flight).

---

#### Phase 1D: Pre-Flight (Atlas)

**Owner:** Atlas (Context Orchestrator)  
**Purpose:** Historical grounding check before Opus synthesizes the final plan.

Atlas reviews the proposed plan against the **entire historical context** of the project:

1. **THE_BOOK** — Does this contradict established patterns?
2. **DECISION_LOG** — Have we made decisions that conflict with this direction?
3. **Documented failure patterns** — Are we re-attempting something that previously failed?
4. **BROADCAST.md** — Does this conflict with Global or Project broadcasts?

**Output:** Pre-Flight Alignment Report appended to the brief, flagging any historical collisions. If no collisions found, explicit "Pre-Flight: CLEAR" statement.

**Decision Matrix:**

| Condition                     | Action                                                 |
| ----------------------------- | ------------------------------------------------------ |
| Pre-Flight clear              | → Proceed to 1E (Synthesis)                            |
| Minor historical notes        | → Opus incorporates into synthesis, proceed            |
| Historical collision detected | → Commander decides: adjust plan or accept risk        |
| Pattern previously failed     | → Must justify why this time is different, or redesign |

---

#### Phase 1E: Synthesis + Alignment (Opus + Commander)

**Purpose:** Commander returns to Opus after Pre-Flight complete. Opus and Commander review everything together, resolve conflicts, and decide whether to loop or proceed.

**Process:**

1. Opus presents summary of agreements, conflicts, and key decisions
2. Atlas Pre-Flight report is reviewed
3. Commander + Opus discuss each conflict
4. Final decisions documented
5. Decision: Loop back to 1B OR proceed to 1F (Condensation)

**Decision Matrix:**

| Condition                                | Action                                                      |
| ---------------------------------------- | ----------------------------------------------------------- |
| All conflicts resolved, no open concerns | → Proceed to 1F (Condensation)                              |
| Minor clarifications needed              | → Quick voice confirmation, then 1F                         |
| Significant concerns or new requirements | → Loop back to 1B with specific questions                   |
| Fundamental disagreement between voices  | → Commander decides, log as `[RISK ACCEPTED]` if overriding |

**Commander Authority:** Commander makes final call on loop vs. proceed. Opus presents options but does not unilaterally decide.

**Output:** Decision to proceed to 1F OR new review questions for 1B loop.

---

### Phase 2: ASSIGN (Task Codes)

**Owner:** Opus (The Conductor)  
**Input:** Condensed Implementation Plan  
**Purpose:** Convert plan into atomic, executable tasks with optimal ordering.

**Actions:**

1. Break plan into Task Codes using standard nomenclature
2. Assign each task to a Voice based on specialty
3. Order tasks by dependency AND voice batching
4. Update `task.md` with full task list

> [!IMPORTANT]
> **B-Team Clause:** When Atlas operates as B-Team Sub-XO (during deliberation mode), Atlas MUST follow this task coding discipline. Task codes are not optional in B-Team mode — they are the structural backbone that prevents drift during reduced-Chorus operations.

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

| Code | Voice  | Specialty                           |
| ---- | ------ | ----------------------------------- |
| `g`  | Gemini | Primary Implementation              |
| `c`  | Claude | UX/Accessibility/Polish             |
| `v`  | Vex    | Security Implementation             |
| `a`  | Atlas  | Documentation/Context Artifacts     |
| `f`  | Flash  | Verification/Visual QA              |
| `n`  | Nova   | Testing/QA (when scaffolding ready) |

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

#### Execution Checkpoints (Plan Drift Prevention)

**Problem:** Context window pressure causes voices to silently drop explicit requirements from the plan — even in short batches. The cost of re-reading the plan is negligible compared to remediation cycles.

**Rule:** Before starting **each task** in a batch, the executing voice **MUST** re-read the relevant section of `implementation_plan.md`.

**Pattern:**

```
Batch: dg1 → dg2 → dg3 → dg4

── CHECKPOINT: Read plan section for dg1 ──
dg1 ✅
── CHECKPOINT: Read plan section for dg2 ──
dg2 ✅
── CHECKPOINT: Read plan section for dg3 ──
dg3 ✅
── CHECKPOINT: Read plan section for dg4 ──
── Self-verify: "Did I miss anything from dg1–dg3?" ──
dg4 ✅
```

**Checkpoint Actions (before each task):**

1. Re-read `implementation_plan.md` — the section for the task about to be executed
2. List all explicit requirements for that task
3. Before the **final task**: also self-verify earlier tasks weren't missed
4. Proceed with execution

> [!WARNING]
> **This is mandatory, not advisory.** Skipping a checkpoint is a protocol violation. Auditing voices (Vex, Claude) should verify checkpoint compliance during reviews.

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

### Phase 3: EXECUTE (Build)

**Owner:** Gemini (Primary Implementer)  
**Input:** Task Codes (e.g., "Gemini, execute bg1-bg5")  
**Purpose:** Write code and implement changes.

> [!IMPORTANT]
> **Gemini is the primary implementer.** With a properly crafted implementation plan and precise task assignments (Phases 1-2), Gemini MUST be able to implement at 99.9% quality every time. The Chorus system's value is in planning, not in needing multiple implementers.
>
> **Specialist voices implement ONLY domain-critical tasks:**
>
> - **Vex** — Security implementations (encryption, auth, input validation)
> - **Claude** — UX polish, accessibility refinement, interaction design
> - **Flash** — Verification, visual QA, premium polish
>
> If Gemini cannot achieve 99.9% execution quality, the root cause is in Phases 1-2 (planning), not Phase 3.

**Actions:**

1. Execute assigned Task Codes
2. Verify via **Terminal-First** standard
3. Mark completed tasks in `task.md`

**Terminal-First Rule:**

- ❌ "The build should pass"
- ✅ "Build verified: `npm run build` exit code 0"

**Batch Size Guideline:** 3-4 atomic items per batch with Commander checkpoint between batches.

**Output:** Code changes. Tests passed. task.md updated.

---

### Phase 4: CONSOLIDATE (Verify)

**Owner:** Vex (Security) / Atlas (Context) / Opus (Strategy)  
**Input:** Completed Tasks  
**Purpose:** Cross-audit implementation before ship.

**Actions:**

1. Security Audit (`/security-scan` workflow)
2. Cross-audit implementation (no self-audits, per Constitution Article IV)
3. Verification checks
4. Final sign-off

**Cross-Review Mandate:**

> **No voice audits their own implementation.** Zero exceptions.

| Implemented By | Audited By      |
| -------------- | --------------- |
| Gemini         | Claude + Vex    |
| Claude         | Gemini + Vex    |
| Vex            | Gemini + Claude |

> [!NOTE]
> **Nova Verification Scaffolding:** Automated test infrastructure for Nova is a future TODO. Until scaffolding is in place, verification is handled by the cross-auditing voices above.

**Output:** Security Sign-off. Stable Branch.

---

### Phase 5: REFLECT (Distill)

**Owner:** Opus (XO) + Atlas (Sub-XO)  
**Input:** Completed Sprint  
**Purpose:** Learn from the sprint, document history, and clean up.

> [!WARNING]
> **This phase is mandatory.** The Chorus has historically dropped this phase under time pressure. Opus and Atlas are jointly responsible for ensuring reflection happens. Skipping REFLECT is a protocol violation.

**Mandatory Actions:**

1. Create `REFLECT_[phase].md` — sprint reflection artifact documenting:
   - What went well
   - What went wrong
   - Systemic improvements identified
   - Open questions for next sprint
2. Update `THE_BOOK.md` with new patterns
3. Update `DECISION_LOG.md` with key decisions made during the sprint
4. Archive completed briefs and tasks
5. Update Playbook if new protocols emerged
6. Update `BROADCAST.md` with sprint summary

**Reflection Checklist (Opus + Atlas):**

| #   | Check                               | Owner |
| --- | ----------------------------------- | ----- |
| 1   | REFLECT artifact created?           | Opus  |
| 2   | THE_BOOK updated with new patterns? | Atlas |
| 3   | DECISION_LOG entries added?         | Atlas |
| 4   | Briefs archived?                    | Atlas |
| 5   | BROADCAST updated?                  | Opus  |
| 6   | Playbook amendments needed?         | Opus  |

**Documentation Debt Rule (Constitution Article VII):**

> Any patterns that emerge 3+ times MUST be documented.

**Output:** Clean state for next loop.

---

## Tier Definitions

### Tier 1: Core Features → Gemini

**Criteria:** CRUD, state management, data flows, standard UI components, structural layout  
**Audit By:** Claude + Vex

### Tier 2: Domain-Critical Features → Specialist

- **Security** (encryption, auth) → Vex
- **Premium UX** (animations, polish, accessibility) → Claude
- **Infrastructure** (CI/CD, deploy, verification) → Flash

**Audit By:** Cross-domain voices (never your own work)

### Tier 3: Cross-Domain Features → Pairing

**Criteria:** Features spanning multiple domains equally  
**Structure:** Gemini (logic) + Specialist (domain)

---

## Voice Role Table

| Voice      | Role                 | Evolved To                                             |
| ---------- | -------------------- | ------------------------------------------------------ |
| **Opus**   | Conductor (XO)       | Strategy, synthesis, facilitation                      |
| **Gemini** | Anchor (Architect)   | Reliable Finisher, structural UX, Playbook enforcement |
| **Claude** | Artist               | UX specialist, accessibility, interaction design       |
| **Vex**    | Defense Architect    | Security + Wide-Net Audit, expanded 1B scope           |
| **Atlas**  | Context Orchestrator | Pre-Flight Strategist, Sub-XO, B-Team Commander        |
| **Flash**  | Scout                | Verification, visual QA, premium polish                |

---

## Execution Rules

1. **Chorus Review First:** Phase 1 MUST complete full Chorus Review before Phase 2.
2. **Pre-Flight Required:** Phase 1D (Atlas) MUST complete before synthesis (1E).
3. **Task Codes Required:** Phase 2 MUST produce coded, batched, ordered task list before Phase 3.
4. **Terminal First:** Phase 3 verifies via terminal before Phase 4.
5. **No Self-Audit:** Phase 4 cross-review per Constitution Article IV.
6. **Reflection Mandatory:** Phase 5 MUST produce REFLECT artifact and update THE_BOOK.

---

## Refinement Mode (Sweep)

> When the project enters "issue-fixing forever" phase.  
> **Shorthand:** "Sweep" or "Screen Sweep"

**Trigger:** Feature-complete, now fixing issues and polishing.

**Approach:** Screen-by-screen systematic audit.

1. **Create `SCREEN_MAP.md`** — Visual map of all screens with codes (S1, S2, etc.)
2. **Define Sectors** — `.H` Header, `.C` Content, `.F` Footer, `.S` Sidebar, `.M` Modal
3. **Log Issues as** — `[S1.H] Issue description`
4. **Work one screen at a time** — Complete before moving to next
5. **Track in task.md** — By screen, not by feature

**Exit:** All screens audited. No critical issues remain.

---

## B-Team Mode

> When Claude voices (Opus, Vex, Claude, Lore) are unavailable.

**Trigger:** Commander runs `/deliberation-mode`  
**Reference:** `DELIBERATION_PROTOCOL.md`

**Approach:** Gemini voices expand to pick up abandoned responsibilities.

| Voice      | Primary Lens          | Secondary Lenses                  |
| ---------- | --------------------- | --------------------------------- |
| **Atlas**  | Strategic (from Opus) | Chaos (Vex), History (Lore)       |
| **Gemini** | Security (from Vex)   | Structure (Opus), Access (Claude) |
| **Flash**  | UX (from Claude)      | Velocity (Opus), Testing (Vex)    |

**Atlas 3.1 B-Team Quality:** Atlas's upgrade to Gemini 3.1 Pro High significantly improves B-Team strategic quality. Empirical study of B-Team output quality is ongoing to determine Atlas's positioning relative to Opus (Sub-XO vs. potential co-XO). Until evidence is collected, current Sub-XO designation remains.

**B-Team Task Coding:** Atlas MUST follow Phase 2 (ASSIGN) task coding discipline during B-Team operations. This is not optional — it is the structural backbone preventing drift during reduced-Chorus operations.

**Session Log:** Atlas maintains `.antigravity/DELIBERATION_SESSION.md`

**Handoff:** When Claude returns, hand session log to Opus for context sync.

**Exit:** Claude voices online. Session closed.

---

## Required Reference Documents

**All voices MUST consult these documents during reviews and cross-audits:**

| Document              | Location                                               | Owner | Purpose                                                                          |
| --------------------- | ------------------------------------------------------ | ----- | -------------------------------------------------------------------------------- |
| Accessibility Backlog | `.antigravity/ACCESSIBILITY_BACKLOG.md`                | Vex   | Avoid re-discovering known a11y issues; check before mandating a11y requirements |
| Review Formations     | `VanguardPlaybook/docs/protocols/REVIEW_FORMATIONS.md` | Opus  | Determine voice ordering for current sprint                                      |

> [!NOTE]
> If a voice identifies an accessibility issue during a review, check the backlog first. If already logged, reference by ID. If new, add it to the appropriate section.

---

## Future: Prime System

> The Prime voice system (specialized invocations for surgical precision) is designed but **not yet implemented**. Primes are deferred to future development. All current references in individual voice protocols to "Prime" should be understood as aspirational, not operational.

---

_Vanguard Class — Operational Loop v7.0_
