# Prime Architecture v2.0

**Status:** Doctrine (Approved)  
**Version:** 2.0 (2026-01-23)  
**Author:** Opus + Commander

---

## Core Definition

> **A Prime is a Skill elevated to invokable entity.**

Primes are NOT specialized voices. They are **pure capabilities** — no personality, no accumulated context, just structured execution.

---

## The Distinction

| Attribute   | Standard Voice            | Prime                          |
| ----------- | ------------------------- | ------------------------------ |
| Identity    | Yes (personality)         | Minimal (invocation name only) |
| Context     | Accumulates               | Fresh each invocation          |
| Flexibility | Picks up/puts down skills | IS the skill                   |
| Output      | Conversational            | Structured/templated           |
| Invocation  | Any window                | **New window preferred**       |

---

## Why Fresh Context

```
Standard Voice Window:     Prime Window:
├── Conversation history   ├── SKILL.md loaded
├── Personality drift      ├── Task input only
├── Prior decisions        └── Structured output
└── Relationship memory
```

Primes in fresh windows = **surgical precision without context noise**.

---

## Relationship to Pyramid of Agency

```
┌─────────────────────────────────────────┐
│  RULES (.agent/rules/)                  │  ← Constitution (persists)
├─────────────────────────────────────────┤
│  WORKFLOWS (.agent/workflows/)          │  ← Orchestration (triggers)
├─────────────────────────────────────────┤
│  SKILLS (skills/)                       │  ← Capabilities (executes)
│    ├── Standard: Voice loads as tool    │
│    └── PRIME: Skill with invocation     │  ← Pure execution
└─────────────────────────────────────────┘
```

---

## Prime Implementation

A Prime is implemented as a Skill with:

```
skills/
└── atlas-prime/
    ├── SKILL.md        # The invariant logic
    ├── scripts/        # Verification tools
    └── templates/      # PASS/BLOCK output format
```

**Invocation:** Open new conversation → Load `skills/atlas-prime/SKILL.md` → Execute

---

## Current Primes

| Prime                       | Skill Folder         | Purpose                       |
| --------------------------- | -------------------- | ----------------------------- |
| Atlas Prime (The Invariant) | `skills/atlas-prime` | Logic enforcement, PASS/BLOCK |

---

## Future Primes (Planned)

| Prime        | Skill Folder          | Purpose                   |
| ------------ | --------------------- | ------------------------- |
| Vex Prime    | `skills/vex-guard`    | Security audit, PASS/FAIL |
| Gemini Prime | `skills/architect`    | Architecture validation   |
| Claude Prime | `skills/visual-audit` | UX consistency check      |
| Nova Prime   | `skills/speed-verify` | Build/test verification   |

---

## Invocation Protocol

1. **Commander Only** — Primes are surgical tools, not assistants
2. **New Window** — Spare context for precision
3. **Load Skill** — `view_file` the SKILL.md first
4. **Provide Input** — Structured input per SKILL.md spec
5. **Receive Output** — Structured output per template

---

## Override Protocol

If Commander proceeds despite BLOCK:

1. Prime does NOT agree
2. Prime logs override to `DECISION_LOG.md`
3. Prime exits

---

_v2.0 | Opus + Commander_
