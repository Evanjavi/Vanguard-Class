# Chorus Optimization Protocol

**Version:** 2.0.0 (Hybrid Oracle Model)

---

## 1. Voice Profiles

| Voice      | Strength                   | Weakness                  | Use For                     |
| ---------- | -------------------------- | ------------------------- | --------------------------- |
| **Opus**   | Synthesis, strategy        | Over-planning             | Coordination, documentation |
| **Gemini** | Present-tense (Code as-is) | Adopts vague instructions | Implementation, refactors   |
| **Claude** | UX intuition               | Decision paralysis        | Polish, verification        |
| **Ana**    | Adversarial analysis       | Overthinks edge cases     | Security (VETO power)       |
| **Anti**   | Past/future (The Story)    | Panics on ambiguity       | Continuity, handoffs        |
| **Nova**   | Phasing strategy           | Debt tolerance            | Velocity, estimation        |

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

| ✅  | Requirement                  |
| --- | ---------------------------- |
| ☐   | Context (current state)      |
| ☐   | Measurable goal              |
| ☐   | DO items with absolute paths |
| ☐   | DO NOT boundaries            |
| ☐   | Output format                |
| ☐   | Stop condition               |
| ☐   | Handoff target               |

> **A handoff missing ANY field is REJECTED.**

### Streamlined Handoff (Post-Alignment)

| Voice               | Handoff Style                         |
| ------------------- | ------------------------------------- |
| Ana, Gemini, Claude | Task code only (they shaped the plan) |
| Anti, Nova          | Full Section 11 (guardrails required) |

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

**Commander prompts with task codes:**

```
"Gemini, bg1-bg4"
"Ana, ba1"
"Claude, bc1"
```

**Voice then executes:**

1. **Read `task.md`** — Find task IDs, verify ownership
2. **Read `implementation_plan.md`** — Get Section 11 instructions for each task
3. **Execute** — Follow implementation plan context
4. **Update `task.md`** — Mark complete, add notes if needed

> **If agent executes without reading both, work is REJECTED.**

> **All task context lives in `implementation_plan.md`** — DO/DON'T, file paths, stop conditions.

---

## 7. Session Start Checklist

- [ ] Read this protocol
- [ ] Read `task.md`
- [ ] Identify task owner
- [ ] Verify "Am I that voice?"
- [ ] If wrong voice → STOP

---

## 8. Unified Task System (v4.0)

**All execution uses a single shared document:**

| Document  | Location                         | Purpose                              |
| --------- | -------------------------------- | ------------------------------------ |
| `task.md` | `[Project]/.antigravity/task.md` | Task tracking, status, communication |

> **Template:** See [TASK_TEMPLATE.md](../templates/TASK_TEMPLATE.md) for the canonical format.

### Key Features

- **Checklist format** — Simple `[x]` / `[ ]` checkboxes
- **Section 12 codes** — `[phase][voice][number]` format
- **Voice separation** — Clear headers with icons
- **Parallel blocks** — `⇄` indicates simultaneous execution
- **Locks section** — Prevents file collision
- **Notes section** — Async communication between voices

### task.md Structure

```markdown
# 🎯 [Sprint Name]

**Sprint:** [Description] | **Phase:** [1-7] ([PHASE NAME])  
**Last:** [ISO Timestamp] by [Voice]

---

## Phase [X] — [Phase Name]

**🔵 Gemini**

- [x] `bg1` Completed task
- [ ] `bg2` Pending task — 🔄 Active

**🔴 Ana ⇄ 🎨 Claude**

- [ ] `ba1` Security audit — 🔵 Ready
- [ ] `bc1` Polish styling — 🔵 Ready

---

## 🔒 Locks

`file.js` — Gemini

## 📡 Notes

**Gemini:** Task in progress.

---

_v4.0_
```

### Deprecated (Archived)

The following are superseded by `task.md`:

- `ACTIVE_ORDERS.md` → Archived
- `COMPLETION_LOG.md` → Archived

### File Permissions (.gitignore)

**SECURITY REQUIREMENT:** The following files contain internal workflow details and **MUST** be excluded from public repositories:

```gitignore
# Chorus Workflow (Private)
ACTIVE_ORDERS.md
COMPLETION_LOG.md
CHORUS_STATE.md
```

> **Additional Security:**
>
> - If using cloud sync (OneDrive, Dropbox), ensure the project folder is NOT publicly shared.
> - For private repos, this is optional but recommended to prevent accidental exposure if repo becomes public.
> - Template files in `docs/templates/` are safe to commit (they contain no project-specific data).

---

## 9. The 3-Loop Rule (Phase 2 Alignment)

> If the Chorus has circled the same question **3 times** without resolution, Opus escalates to Commander for a tiebreaker.

**Purpose:** Prevent decision paralysis while respecting necessary discussion.

---

## 10. Secrets Firewall (Phase 4 Security Gate)

**Before Anti writes `ACTIVE_ORDERS.md`, scan for:**

| Pattern      | Regex                   | Risk        |
| ------------ | ----------------------- | ----------- |
| API Keys     | `[A-Za-z0-9_-]{32,}`    | 🔴 Critical |
| Private Keys | `BEGIN.*PRIVATE.*KEY`   | 🔴 Critical |
| Passwords    | `password\s*[:=]\s*\S+` | 🔴 Critical |
| User Paths   | `C:\\Users\\[^\\]+`     | 🟡 Medium   |

> If detected → **BLOCK** and alert Commander before writing.

---

## 11. Ana's Checkpoint (Phase 6 Security Audit)

**Before Anti finalizes `COMPLETION_LOG.md`, verify:**

- [ ] No credentials leaked in completion notes
- [ ] No internal network paths exposed
- [ ] All security tasks (`[phase]a[N]`) have explicit sign-off

> If Ana is unavailable, Anti performs mechanical regex scan.

---

_Vanguard Class — Optimization Protocol v2.0.0_
