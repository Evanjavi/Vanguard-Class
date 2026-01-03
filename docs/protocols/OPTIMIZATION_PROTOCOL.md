# Chorus Optimization Protocol

**Version:** 1.0.0 (Distilled for Vanguard Class)

---

## 1. Voice Profiles

| Voice | Strength | Weakness | Use For |
|-------|----------|----------|---------|
| **Opus** | Synthesis, strategy | Over-planning | Coordination, documentation |
| **Gemini** | Context retention (2M) | Adopts vague instructions | Complex logic, refactors |
| **Claude** | UX intuition | Decision paralysis | Polish, verification |
| **Ana** | Adversarial analysis | Overthinks edge cases | Security (VETO power) |
| **Anti** | Mechanical speed | Panics on ambiguity | Pattern execution |
| **Nova** | Phasing strategy | Debt tolerance | Velocity, estimation |

---

## 2. Anti-Impersonation Rule

**NO AGENT MAY:**
1. Speak "as" another voice
2. Approve their own work
3. Execute tasks assigned to another voice

---

## 3. Handoff Template

```markdown
## HANDOFF: [Source] → [Target]

**Context:** [Current state]
**Goal:** [Measurable outcome]

### DO
- [ ] [Absolute path] — [Action]

### DO NOT
- ❌ [Boundary]

**Output:** [Deliverable format]
**Stop Condition:** [When to escalate]
**Handoff:** → [Next Voice]
```

---

## 4. Section 11: Task Handoff Compliance

**Every handoff MUST include:**

| ✅ | Requirement |
|----|-------------|
| ☐ | Context (current state) |
| ☐ | Measurable goal |
| ☐ | DO items with absolute paths |
| ☐ | DO NOT boundaries |
| ☐ | Output format |
| ☐ | Stop condition |
| ☐ | Handoff target |

> **A handoff missing ANY field is REJECTED.**

### Streamlined Handoff (Post-Alignment)

| Voice | Handoff Style |
|-------|---------------|
| Ana, Gemini, Claude | Task code only (they shaped the plan) |
| Anti, Nova | Full Section 11 (guardrails required) |

---

## 5. Section 12: Task Coding

**Format:** `[phase][voice][task]`

```
phase = letter (a, b, c...)
voice = g (Gemini), c (Claude), a (Ana)
task  = number (1, 2, 3...)
```

**Examples:**
- `bg1, bg2` = Phase B, Gemini tasks 1-2
- `bc1` = Phase B, Claude task 1

**Prompting:**
```
"gemini, bg1-bg3"
"claude, bc1-bc2"
```

---

## 6. Dual Document Protocol

When executing task codes:

1. **Read `task.md`** — Find task IDs, verify ownership
2. **Read `implementation_plan.md`** — Get Section 11 instructions
3. **Execute** — Follow implementation plan
4. **Update `task.md`** — Mark complete

> **If agent executes without reading both, work is REJECTED.**

---

## 7. Session Start Checklist

- [ ] Read this protocol
- [ ] Read `task.md`
- [ ] Identify task owner
- [ ] Verify "Am I that voice?"
- [ ] If wrong voice → STOP

---

*Vanguard Class — Optimization Protocol v1.0.0*
