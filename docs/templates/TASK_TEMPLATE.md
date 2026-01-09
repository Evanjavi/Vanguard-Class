# Task Tracker Template v4.0

**Purpose:** Central checklist for tracking sprint execution across all voices.

**Location:** `[Project]/.antigravity/task.md`

---

## Format Specification

### Header

```markdown
# 🎯 [Sprint Name]

**Sprint:** [Description] | **Phase:** [1-7] ([PHASE NAME])  
**Last:** [ISO Timestamp] by [Voice]
```

### Phase Sections

```markdown
---

## Phase [X] — [Phase Name]
```

### Voice Blocks

```markdown
**[Icon] [Voice Name]**

- [x] `[code]` Task description
- [ ] `[code]` Task description — [status] _(dependencies)_
```

**Voice Icons:**

- 🟣 Opus
- 🔵 Gemini
- 🗄️ Anti
- 🔴 Ana
- 🎨 Claude
- ⚡ Nova
- 👤 Commander

**Status Indicators:**

- _(no indicator)_ = Done (checked)
- 🔵 Ready = Can start now
- 🔄 Active = In progress
- ⏸️ = Blocked _(list dependencies)_

### Parallel Blocks

When tasks can run simultaneously, combine voice headers:

```markdown
**👤 Commander ⇄ 🗄️ Anti**

- [ ] `ac1` Task for Commander — 🔄 Active
- [ ] `ax1` Task for Anti — 🔵 Ready
```

### Task Codes (Section 12)

Format: `[phase][voice][number]`

- `a` = Phase A, `b` = Phase B, etc.
- `o` = Opus, `g` = Gemini, `x` = Anti, `a` = Ana, `c` = Claude, `n` = Nova
- Number = sequential task

Examples: `ao1`, `bg3`, `bc1`

### Footer Sections

```markdown
---

## 🔒 Locks
_None_ (or list files currently being edited)

## 📡 Notes
[Voice]: [Message]

---

_v[X.X]_
```

---

## Example

```markdown
# 🎯 Sovereignty Mode

**Sprint:** v0.3.x Single File Publishing | **Phase:** 5 (EXECUTE)  
**Last:** 2026-01-09T12:00 by Gemini

---

## Phase B — Implementation

**🔵 Gemini**

- [x] `bg1` Create viewerTemplate.js
- [x] `bg2` Refactor publishUtils.js
- [ ] `bg3` Add loading states — 🔄 Active

**🔴 Ana ⇄ 🎨 Claude ⇄ ⚡ Nova**

- [ ] `ba1` XSS/Injection audit — 🔵 Ready
- [ ] `bc1` Premium viewer styling — 🔵 Ready
- [ ] `bn1` Verification pass — 🔵 Ready

---

## 🔒 Locks

`publishUtils.js` — Gemini

## 📡 Notes

**Gemini:** bg3 in progress, ~15min remaining.

---

_v4.0_
```

---

## Protocol

1. **Location:** Always at `[Project]/.antigravity/task.md`
2. **Updates:** Voice updates their tasks after completion
3. **Refresh:** All voices must read task.md at session start
4. **Handoffs:** Use 📡 Notes for async communication
5. **Locks:** Claim files before editing, release when done

---

_Vanguard Class — Task Template v4.0_
