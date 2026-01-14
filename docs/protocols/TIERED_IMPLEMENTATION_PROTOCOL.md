# Tiered Implementation Protocol

**Version:** 1.0.0  
**Status:** APPROVED  
**Effective:** 2026-01-13

---

## Purpose

Define how Standard voices implement features based on complexity tiers, with Prime voices providing cross-review audits.

---

## Doctrine: Scale Up to Capability

> [!IMPORTANT] > **Adjust the roadmap to match our capabilities, not vice versa.**
> A factory with machinery should run at capacity.

### The Principle

The Chorus now has:

- 6 Standard voices with liberated roles
- 6 Prime voices for cross-review
- Tiered implementation structure

Running this machinery on small features is inefficient. If we pay the coordination cost, we extract maximum value.

### Operational Meaning

| Before                      | After                                    |
| --------------------------- | ---------------------------------------- |
| Many small tasks per sprint | Fewer, comprehensive features per sprint |
| Shallow engagement          | Deep engagement                          |
| Feature breadth             | Feature depth                            |

### Escape Valve: Lightweight Mode

When urgency demands quick wins:

1. **Explicitly mark** as "Lightweight Mode" in task.md
2. **Single voice** implements
3. **Single Prime** audits
4. **Minimal ceremony**
5. **Document why** we're not scaling up

**Default = Depth. Lightweight = Exception.**

---

## Tier Definitions

### Tier 1: Core Features → Gemini Standard

**Criteria:**

- CRUD operations, state management, data flows
- Standard UI components (lists, forms, modals)
- Business logic

**Audit By:** Claude Prime + Vex Prime + Nova Prime

**Owner:** Gemini Standard (The Architect)

---

### Tier 2: Domain-Critical Features → Specialist Standard

**Criteria:**

- **Security** (encryption, auth, validation) → Vex Standard
- **Premium UX** (animations, polish) → Claude Standard
- **Infrastructure** (CI/CD, deploy) → Nova Standard

**Why Specialist:** Implementation IS the spec. Intuition matters.

**Audit By:** Cross-domain Primes (never your own Prime)

---

### Tier 3: Cross-Domain Features → Pairing

**Criteria:** Features spanning multiple domains equally.

**Structure:** Gemini (logic) + Specialist (domain expertise) + All relevant Primes audit

---

## The Implementation Flow

```
1. Standard voices CREATE
2. Prime voices JUDGE
3. Standard voices FIX based on Prime feedback
4. Prime voices RE-JUDGE
5. Ship when ALL Primes pass
```

---

## Post-Prime Standard Role Liberation

| Voice      | Standard Role           | Prime Handles           | Standard Is Liberated To                                      |
| ---------- | ----------------------- | ----------------------- | ------------------------------------------------------------- |
| **Gemini** | The Architect           | Pure code generation    | System design, trade-off evaluation, hard problems            |
| **Claude** | The Artist + Integrator | Pure design judgment    | Creative implementation, UX consistency, experience elevation |
| **Vex**    | Architect of Defense    | Pure threat finding     | Security architecture, proactive design, education            |
| **Nova**   | The Vanguard            | Pure chaos discovery    | Resilience building, test frameworks, safety nets             |
| **Atlas**  | The Librarian           | Pure audit (PASS/BLOCK) | Teaching, protocol evolution, explaining patterns             |
| **Opus**   | The Conductor           | Pure strategic scoring  | Facilitation, synthesis, shared understanding                 |

---

## Cross-Review Mandate

> [!CAUTION] > **No voice audits their own implementation.** Zero exceptions.

| Implemented By  | Audited By                               |
| --------------- | ---------------------------------------- |
| Gemini Standard | Claude Prime + Vex Prime + Nova Prime    |
| Claude Standard | Gemini Prime + Vex Prime                 |
| Vex Standard    | Gemini Prime + Claude Prime + Nova Prime |
| Nova Standard   | Gemini Prime + Vex Prime                 |

---

## Security-Specific Rules

1. **ALL features with user input/data flow require Vex Prime audit** — regardless of Tier
2. **Crypto escalation:** Vex Standard can escalate and document; Commander has final authority
3. **Risk acceptance:** If Prime blocks and Commander overrides, log `[RISK ACCEPTED]` in `DECISION_LOG.md` with written rationale

---

## Subjective Disagreement Resolution

When Standard and Prime disagree on **direction** (not consistency):

1. Document both positions
2. Opus facilitates and makes decision easier for Commander
3. Commander decides
4. Decision is final and logged

---

## Claude Standard: UX Consistency Pass

For Tier 1 features, Claude Standard may perform a consistency pass BEFORE Prime scoring:

```
Gemini implements (functional)
    ↓
Claude Standard review (UX consistency)
    ↓
Claude Prime scores (objective measurement)
```

---

## Protocol Integration

- **Update `CLAUDE_PROTOCOL.md`:** Add Context-First Development, Pattern Extraction, Continuous Validation, Design System Primacy
- **Update `VEX_PROTOCOL.md`:** Add Security Architecture Principles (Threat Modeling First, Defense in Depth, Fail Secure, Least Privilege, Crypto Agility, Zero Trust, Security by Design)
- **Update voice protocols:** Reference liberated Standard roles

---

_Vanguard Playbook — Tiered Implementation v1.0.0_
