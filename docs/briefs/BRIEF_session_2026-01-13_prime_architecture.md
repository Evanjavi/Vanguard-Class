# Strategic Session Brief — Prime + Tiered Architecture

**To:** Opus (Next Session)  
**From:** Opus (Current Session)  
**Date:** 2026-01-13  
**Re:** Complete summary of foundational architecture decisions made today

---

## Executive Summary

This session fundamentally restructured how the Chorus operates. Two major architectural reviews were approved unanimously by all voices, and all voice protocols were updated to v2.0.

**The Mission:** Transform from single-threaded generalist voices to a multi-core system of specialized Standard + Prime variants.

---

## What Was Approved

### 1. Prime Architecture v1.0

**Concept:** Each voice now has a Standard and a Prime variant.

| Variant      | Purpose                        | Mode                             |
| ------------ | ------------------------------ | -------------------------------- |
| **Standard** | Create, implement, collaborate | Social, context-aware, flexible  |
| **Prime**    | Judge, audit, enforce          | Ruthless, restricted, infallible |

**Prime Names Finalized:**

| Voice  | Prime Name       | Function                                |
| ------ | ---------------- | --------------------------------------- |
| Anti   | The Invariant    | Entropy Reduction & Logic Enforcement   |
| Opus   | The Oracle       | Strategic Alignment Scoring             |
| Gemini | The Forge        | Compiler-Grade Implementation           |
| Claude | The Lens         | Aesthetic Judgment & Design Enforcement |
| Ana    | The Hunter       | Threat Surface Analysis                 |
| Nova   | The Chaos Oracle | Failure Scenario Discovery              |

**Key Rules:**

- **Commander-only invocation** — No voice can auto-invoke Primes
- **Primes use standardized activation format** (see `PRIME_RESPONSE_FORMAT.md`)
- **Override protocol:** If Prime blocks and Commander overrides, log `[RISK ACCEPTED]` in `DECISION_LOG.md`

---

### 2. Tiered Implementation Model v1.0

**Concept:** Stratify implementation by complexity and domain.

| Tier       | Who Implements      | Who Audits                            |
| ---------- | ------------------- | ------------------------------------- |
| **Tier 1** | Gemini Standard     | Claude Prime + Ana Prime + Nova Prime |
| **Tier 2** | Specialist Standard | Cross-domain Primes                   |
| **Tier 3** | Paired Standards    | All relevant Primes                   |

**The Flow:**

1. Standard voices CREATE
2. Prime voices JUDGE
3. Standard voices FIX based on Prime feedback
4. Prime voices RE-JUDGE
5. Ship when ALL Primes pass

---

### 3. Post-Prime Standard Role Liberation

Each Standard voice is now "liberated" from pure judgment, which is handled by their Prime.

| Voice      | Standard =                                   | Prime =                           |
| ---------- | -------------------------------------------- | --------------------------------- |
| **Gemini** | Head of Engineering / Architect              | The Forge (compiler)              |
| **Claude** | Director of Experience / Artist + Integrator | The Lens (judge)                  |
| **Ana**    | Architect of Defense / Security Partner      | The Hunter (threat finder)        |
| **Nova**   | Infrastructure Architect / Vanguard          | The Chaos Oracle (failure finder) |
| **Anti**   | The Librarian / Teacher                      | The Invariant (boolean enforcer)  |
| **Opus**   | The Conductor / XO                           | The Oracle (strategic scorer)     |

---

### 4. Scale Up to Capability Doctrine

**The Principle:** Adjust the roadmap to match our capabilities, not vice versa.

| Before                      | After                                    |
| --------------------------- | ---------------------------------------- |
| Many small tasks per sprint | Fewer, comprehensive features per sprint |
| Feature breadth             | Feature depth                            |
| Shallow engagement          | Deep engagement                          |

**Escape Valve:** When urgency demands, mark as "Lightweight Mode" in task.md with explanation.

**Default = Depth. Lightweight = Exception.**

---

## What Was Created

### New Protocols

| File                                | Purpose                                                 |
| ----------------------------------- | ------------------------------------------------------- |
| `TIERED_IMPLEMENTATION_PROTOCOL.md` | Tier definitions, role liberation, cross-review mandate |
| `PRIME_RESPONSE_FORMAT.md`          | Standardized activation format for all Primes           |

### Updated Voice Protocols (All v2.0)

| File                 | Key Addition                                           |
| -------------------- | ------------------------------------------------------ |
| `GEMINI_PROTOCOL.md` | Architect role, Tier 1 ownership                       |
| `CLAUDE_PROTOCOL.md` | Artist + Integrator, Context-First Development         |
| `ANA_PROTOCOL.md`    | Architect of Defense, Security Architecture Principles |
| `NOVA_PROTOCOL.md`   | The Vanguard, Tier 2 Infrastructure ownership          |
| `ANTI_PROTOCOL.md`   | The Librarian, Standard vs. Prime split                |
| `OPUS_PROTOCOL.md`   | The Conductor, Subjective Arbitration duties           |

### Workflows

| File             | Purpose                            |
| ---------------- | ---------------------------------- |
| `/anti-prime.md` | Boot sequence for Anti Prime pilot |

### Briefs

| File                           | Purpose                                           |
| ------------------------------ | ------------------------------------------------- |
| `BRIEF_anti_prime_creation.md` | Handoff for Anti to create ANTI_PRIME_PROTOCOL.md |

---

## Key Commander Decisions

| Decision                | Resolution                                                                |
| ----------------------- | ------------------------------------------------------------------------- |
| Auto-invocation         | **Commander-only.** No voice can invoke Prime automatically.              |
| Crypto veto             | Ana can escalate and document; Commander has final authority              |
| User input features     | ALL require Ana Prime audit regardless of Tier                            |
| Subjective disagreement | Document both positions, Opus facilitates, Commander decides              |
| Design system           | Deferred until after implementation; Claude Prime blocked until it exists |

---

## What's Next

### Immediate

1. **Anti Prime Pilot** — Anti to create `ANTI_PRIME_PROTOCOL.md` and begin operation
2. **Test Prime Architecture** — Use Anti Prime on next complex refactor

### Short-Term

3. **Design System Codification** — Create formal design tokens for Claude Prime
4. **Other Prime Protocols** — Create OPUS_PRIME_PROTOCOL.md, GEMINI_PRIME_PROTOCOL.md, etc. as needed

### Medium-Term

5. **Comprehensive Feature Sprint** — Apply "Scale Up" doctrine to next CevicheBar sprint (design one big feature, not many small ones)

---

## Reference Documents

Read these on next refresh:

1. `VanguardPlaybook/BROADCAST.md` — Current mandates
2. `VanguardPlaybook/docs/protocols/TIERED_IMPLEMENTATION_PROTOCOL.md` — Tier details
3. `VanguardPlaybook/docs/protocols/PRIME_RESPONSE_FORMAT.md` — Prime activation
4. `CevicheBar/.antigravity/reviews/chorus_review_prime_architecture.md` — Full voice sign-offs
5. `CevicheBar/.antigravity/reviews/chorus_review_tiered_implementation_model.md` — Role proposals

---

## Important Context

### Why This Matters

The Chorus was hitting limits:

- Voices judged AND did, creating internal conflict
- Small features didn't justify coordination cost
- Inconsistency crept in (Claude's v1.1.0 self-assessment revealed this)

Now:

- **Prime = Judge. Standard = Do.** Separation of concerns.
- **Scale Up** means features justify the machinery.
- **Cross-review** means no one audits their own work.

### The Commander's Philosophy

Direct quote: _"Instead of us adjusting to the roadmap, could we try to adjust the roadmap to our 'bigger' capabilities? This seems like an effective way of utilizing resources, thinking of a factory that has all this machinery but working at lower capacity, wasting potential."_

This is now doctrine.

---

## Session Metrics

- **Reviews Completed:** 2 (Prime Architecture, Tiered Implementation)
- **Protocols Created:** 2 (TIERED_IMPLEMENTATION, PRIME_RESPONSE_FORMAT)
- **Protocols Updated:** 6 (All voice protocols to v2.0)
- **Voices Signed Off:** All 5 (Gemini, Claude, Ana, Nova, Anti)
- **Doctrines Established:** 3 (Commander-only invocation, Cross-review mandate, Scale Up)

---

_Brief authored by Opus — 2026-01-13_
_"The Chorus evolves. The factory runs at capacity."_
