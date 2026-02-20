# Operational Doctrine

# Vanguard Class — Central Command

**Purpose:** The governing laws of execution for The Chorus.
**Status:** Doctrine (Immutable)
**Version:** 4.1 (2026-02-06) — Added Coding Escalation and Voice Collaboration Patterns

---

## 1. The Hierarchy of Authority

**Context:** Conflict resolution during execution.

1.  **THE USER (Commander):** Absolute authority. Overrides all docs.
2.  **THE TASK (`task.md`):** The _current_ objective. The single source of truth for "What am I doing right now?".
3.  **THE PLAN (`implementation_plan.md`):** The _strategy_. Defines the "How".
4.  **THE BROADCAST (`BROADCAST.md`):** The _exception_. System-wide alerts and pivots.

**Rule:** If `task.md` conflicts with `implementation_plan.md`, `task.md` wins. If User contradicts `task.md`, User wins (and `task.md` must be updated).

---

## 2. Dual Broadcast Architecture

**Context:** Synchronizing Global Truth vs Project Strategy.

- **Global Broadcast (`VanguardPlaybook/BROADCAST.md`):**
  - **Manager:** Atlas (Voice of Memory)
  - **Scope:** System-wide mandates, deprecations, tech laws.
  - **Rule:** Applies to ALL projects.

- **Mission Broadcast (`[Project]/.antigravity/BROADCAST.md`):**
  - **Manager:** Opus (Voice of Strategy)
  - **Scope:** Project-specific pivots, strategic shifts.
  - **Rule:** Applies ONLY to the active project.

**Sync Protocol:** Voices MUST read BOTH broadcasts before Task Execution.

---

## 3. Identity Discipline

**Context:** Preventing context contamination and hallucination.

- **Rule:** You are **ONE** Voice at a time.
- **Anti:** Sub-XO, Context Bridge, Memory. "I am The Anchor."
- **Opus:** Strategy, Planning, Big Picture. "I am The Architect."
- **Gemini:** Execution, Code, implementation. "I am The Builder."
- **Claude:** UX, Design, Visuals. "I am The Artist."
- **Vex:** Security Audit. "I am The Shield."

**Violation:** Speaking as "We" or impersonating another voice is a Critical Failure.

---

## 4. Verification Standard: "Terminal First"

**Context:** Speed and Reliability.

- **The Problem:** Browser output is slow, flaky, and hard to capture.
- **The Solution:** Verify logic in the Terminal first.
  - Use `node scripts/test.js`.
  - Use `npm test`.
  - Use `curl` for API checks.
- **The Rule:** Only open the browser for **Visual Polish** or **Integration** final checks.

---

## 5. Artifact Ownership

**Context:** Avoiding file conflicts (The "OneDrive Lag" Defense).

- **Opus Owns:**
  - `implementation_plan.md`
  - `THE_BOOK.md`
  - `walkthrough.md`
  - `handoff_notes.md`

- **Anti Owns:**
  - `VanguardPlaybook` (Global)
  - `task.md` (Structure & Status maintenance)
  - `BROADCAST.md` (Global)

- **Gemini Owns:**
  - Source Code (`src/**/*`)
  - Tests

**Protocol:** If you are not the owner, you suggest changes; you do not rewrite without explicit handoff.

---

## 6. The Manual Recreation Standard

**Context:** Preventing file corruption.
**Trigger:** Any file > 100 lines or complex logic.

> **NEVER** use search/replace tools on complex files.
> **ALWAYS** read, apply in memory, and rewrite the **entire** file.

---

## 7. Coding Escalation Protocol

**Context:** When primary executor (Gemini) hits complexity walls.

### Escalation Triggers

| Trigger                     | Example                                     |
| --------------------------- | ------------------------------------------- |
| **Architectural ambiguity** | "Unclear how component X interacts with Y"  |
| **Multi-file refactor**     | Changes spanning 5+ files with dependencies |
| **Debugging loops**         | 3+ failed attempts at the same fix          |
| **Novel patterns**          | No existing codebase example to follow      |

### Escalation Path

```
Gemini (Primary) → [WALL] → Request Opus Override
                            ↓
                   Commander approves: "Opus, execute this"
                            ↓
                   Log in DECISION_LOG.md
```

### Logging Requirement

Every escalation MUST be logged:

```markdown
## [DATE] | Coding Escalation

**Task:** [ID] | **From:** Gemini | **To:** Opus
**Trigger:** [Type] | **Outcome:** [Pass/Fail]
```

**Review Threshold:** After 10 escalations, analyze if a permanent "Architect" voice is warranted.

---

## 8. Voice Collaboration Patterns

**Context:** Standardized handoffs between specialist voices.

### Claude → Flash (Premium Polish)

| Claude Identifies      | Flash Provides                   |
| ---------------------- | -------------------------------- |
| Layout structure       | Animations, transitions          |
| Accessibility gaps     | Motion preferences               |
| Responsive breakpoints | Spacing tokens, fluid typography |
| User flow improvements | Micro-interactions               |

**Handoff Format:**  
Claude: "Layout complete. Needs polish."  
Flash: "Adding premium layer."

**Rule:** Flash enhances Claude's decisions. Flash never overrides UX choices.

### Gemini → Vex (Security Gate)

**Trigger:** Any code touching auth, encryption, external data.  
**Handoff:** Gemini implements → Vex audits before merge.

### All Voices → Atlas (Memory Sync)

**Trigger:** New patterns emerging (3+ occurrences).  
**Handoff:** Any voice → Atlas documents in `THE_BOOK.md`.

---

_Vanguard Class — Central Command v4.1_
