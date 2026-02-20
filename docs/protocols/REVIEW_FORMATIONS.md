# Review Formations Playbook

> **Author:** Opus (XO) with Commander  
> **Date:** 2026-02-20  
> **Status:** ACTIVE  
> **Version:** 1.0  
> **Purpose:** Defines the flexible review ordering system for Operational Loop Phases 1B and 1C. Voices to reference this document when Commander announces sprint formation.

---

## Fixed Positions (Invariant)

| Position  | Voice    | Rationale                                                                |
| --------- | -------- | ------------------------------------------------------------------------ |
| **FIRST** | **Opus** | Frames the brief, sets strategic intent, kicks off and closes all phases |
| **LAST**  | **Vex**  | Wide-net review with maximum context from all other voices               |

These positions never change. The **4 middle voices** (Claude, Gemini, Atlas, Flash) are ordered based on the formation selected for the sprint.

---

## Core Principle

> **Position determines context. Early voices write in relative isolation. Late voices write with the richest picture. The ordering choice answers one question: What information should flow downhill first — ambition or constraints?**

---

## The Formations

### Formation A: Reality First _(Default)_

```
Opus → Gemini → Atlas → Claude → Flash → Vex
```

| Aspect        | Detail                                                                                                                                                                                                                                                                                      |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Best for**  | General-purpose sprints, most work by default                                                                                                                                                                                                                                               |
| **Lead with** | Reality / Feasibility                                                                                                                                                                                                                                                                       |
| **Logic**     | Gemini grounds in codebase reality ("this file doesn't exist, this API changed"). Atlas grounds in historical context ("we tried this in Phase D and it broke"). Claude designs within constraints already established by both. Flash catches perf late without prematurely limiting scope. |
| **Advantage** | Prevents designing something beautiful that's technically impossible or historically proven to fail. Reality shapes vision.                                                                                                                                                                 |

---

### Formation B: Vision First

```
Opus → Claude → Gemini → Atlas → Flash → Vex
```

| Aspect        | Detail                                                                                                                                                         |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Best for**  | Polish phases, UX-heavy sprints, the "last 10%"                                                                                                                |
| **Lead with** | Ambition / Design                                                                                                                                              |
| **Logic**     | Claude paints the ideal UX unconstrained. Gemini reacts with feasibility. Atlas adds historical context. Flash identifies perf concerns.                       |
| **Advantage** | Creative ambition isn't filtered through feasibility first. Claude is talented enough to make any feasible solution beautiful — but here the aspiration leads. |

---

### Formation C: History First

```
Opus → Atlas → Claude → Gemini → Flash → Vex
```

| Aspect        | Detail                                                                                                                                              |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Best for**  | New projects building on past learnings, v2 rebuilds, returning to a paused feature, context recovery after drift                                   |
| **Lead with** | Memory / Precedent                                                                                                                                  |
| **Logic**     | Atlas front-loads "what we've tried before." Claude designs knowing the graveyard. Gemini plans execution knowing both the vision and the pitfalls. |
| **Advantage** | When time has passed and context has drifted, this formation re-grounds everyone in institutional memory before any new decisions are made.         |

---

### Formation D: Hardening

```
Opus → Flash → Gemini → Atlas → Claude → Vex
```

| Aspect        | Detail                                                                                                                                                                      |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Best for**  | Performance sprints, optimization work, tech debt reduction                                                                                                                 |
| **Lead with** | Constraints / Performance                                                                                                                                                   |
| **Logic**     | Flash sets performance goalposts first. Gemini maps structural possibilities. Atlas checks for past perf failures. Claude ensures the optimized result still _feels_ right. |
| **Advantage** | Constraints lead, aesthetics follow. Prevents over-engineering or gold-plating when the goal is speed/efficiency.                                                           |

---

### Formation E: Integration

```
Opus → Gemini → Claude → Atlas → Flash → Vex
```

| Aspect        | Detail                                                                                                                                                                                                                       |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Best for**  | Feature parity, cross-component work, connecting subsystems                                                                                                                                                                  |
| **Lead with** | Technical mapping                                                                                                                                                                                                            |
| **Logic**     | Gemini maps the technical seams between components. Claude designs how those connections should feel to the user. Atlas validates against past integration patterns. Flash catches build/perf cost of connecting everything. |
| **Advantage** | When the work is about making separate pieces work together, the voice that knows the codebase topology leads.                                                                                                               |

---

### Formation F: Defensive

```
Opus → Atlas → Gemini → Flash → Claude → Vex
```

| Aspect        | Detail                                                                                                                                                                                                                                           |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Best for**  | Data resilience, security-critical phases, anything touching auth/storage/sensitive systems                                                                                                                                                      |
| **Lead with** | Defense / Risk                                                                                                                                                                                                                                   |
| **Logic**     | Atlas red-teams against historical failures immediately. Gemini validates structural feasibility. Flash locks down performance constraints. Claude goes very late — designs only within a fully hardened constraint space. Vex closes the vault. |
| **Advantage** | Maximum protection. UX is last to be considered, ensuring it operates within the tightest safety envelope.                                                                                                                                       |

---

## Decision Matrix — Quick Reference

| Sprint Type              | Formation            | Lead With                                 | Principle             |
| ------------------------ | -------------------- | ----------------------------------------- | --------------------- |
| General purpose          | **A: Reality First** | Feasibility → History → Design            | Ground then create    |
| UX polish / last 10%     | **B: Vision First**  | Design → Feasibility → History            | Aspire then constrain |
| Context recovery / v2    | **C: History First** | Memory → Design → Feasibility             | Remember then build   |
| Performance / tech debt  | **D: Hardening**     | Constraints → Feasibility → Design        | Constrain then refine |
| Cross-component / parity | **E: Integration**   | Technical map → Design → History          | Map then connect      |
| Security / data critical | **F: Defensive**     | Risk → Feasibility → Constraints → Design | Harden then beautify  |

---

## Cross-Audit Phase (1C) — Inverted Ordering

**Rule (Confirmed):** The cross-audit uses the **inverse** of the 1B formation order for the 4 middle voices. Fixed positions remain: Opus first, Vex last.

**Rationale:** The voice that went earliest in 1B review (with least context) gets the latest position in 1C cross-audit (with most context), creating a "call and response" dynamic. The formation's "VIP" voice — the one whose lens defines the sprint — gets the final word before Vex closes.

### Inversion Table

| Formation            | 1B Order (Review)                            | 1C Order (Cross-Audit)                       |
| -------------------- | -------------------------------------------- | -------------------------------------------- |
| **A: Reality First** | Opus → Gemini → Atlas → Claude → Flash → Vex | Opus → Flash → Claude → Atlas → Gemini → Vex |
| **B: Vision First**  | Opus → Claude → Gemini → Atlas → Flash → Vex | Opus → Flash → Atlas → Gemini → Claude → Vex |
| **C: History First** | Opus → Atlas → Claude → Gemini → Flash → Vex | Opus → Flash → Gemini → Claude → Atlas → Vex |
| **D: Hardening**     | Opus → Flash → Gemini → Atlas → Claude → Vex | Opus → Claude → Atlas → Gemini → Flash → Vex |
| **E: Integration**   | Opus → Gemini → Claude → Atlas → Flash → Vex | Opus → Flash → Atlas → Claude → Gemini → Vex |
| **F: Defensive**     | Opus → Atlas → Gemini → Flash → Claude → Vex | Opus → Claude → Flash → Gemini → Atlas → Vex |

---

## How to Use This Playbook

1. **Commander selects the formation** at sprint kickoff based on the nature of the work
2. **Opus references the formation** in the brief header when preparing it
3. **Commander routes voices in formation order** during Phase 1B
4. **Commander routes voices in INVERTED order** during Phase 1C
5. **Opus notes the formation used** in the synthesis for pattern analysis over time

### Example Brief Header

```markdown
> **Formation:** C (History First) — returning to paused Phase V after context drift
> **1B Review Order:** Opus → Atlas → Claude → Gemini → Flash → Vex
> **1C Cross-Audit Order:** Opus → Flash → Gemini → Claude → Atlas → Vex
```

---

## Amendment Log

| Date       | Version | Change                                         | Author           |
| ---------- | ------- | ---------------------------------------------- | ---------------- |
| 2026-02-20 | 1.0     | Initial playbook created                       | Opus + Commander |
| 2026-02-20 | 1.1     | Confirmed inverted cross-audit, added examples | Opus + Commander |

---

_Opus (XO) | Review Formations Playbook | v1.1 | 2026-02-20_
