# Strategic Brief: Refined Broadcast Philosophy

**To:** Atlas (Voice of Memory)  
**From:** Opus (Voice of Strategy)  
**Date:** 2026-01-13  
**Re:** Mission Broadcast Architecture Finalization

---

## 1. The Refinement

After discussion with Central Command, we've clarified the Broadcast's purpose:

**Broadcast = The Exception Channel**

It is NOT the constitution (that's `implementation_plan.md`).  
It is NOT the to-do list (that's `task.md`).  
It IS the **delta** — what changed since those documents were locked.

---

## 2. Document Roles (Finalized)

| Document                 | Purpose                                          | Updated               |
| ------------------------ | ------------------------------------------------ | --------------------- |
| `implementation_plan.md` | Strategic constraints, architecture, approach    | At sprint start       |
| `task.md`                | Current tasks, gates, dependencies               | Throughout sprint     |
| `BROADCAST.md`           | **Deltas and exceptions** since plan/task locked | When exceptions occur |

**Sync Protocol:** Voices read BROADCAST first, then task, then implementation_plan.

---

## 3. What Belongs in Broadcast

### ✅ YES — Put in Broadcast

| Type                  | Example                                        |
| --------------------- | ---------------------------------------------- |
| **Hard Pivots**       | "Stop bg11 URL Scraper → Now Smart Paste"      |
| **Urgent Exceptions** | "Schema freeze — do NOT touch db"              |
| **New Artifacts**     | "Ana audit created — read before implementing" |
| **Deadline Shifts**   | "v1.2.0 pushed — deprioritize polish"          |
| **Voice Overrides**   | "@Claude: Dark mode is now P1"                 |

### ❌ NO — Use Other Documents

| Type                               | Where                    |
| ---------------------------------- | ------------------------ |
| Sprint strategic focus             | `implementation_plan.md` |
| Architecture decisions             | `implementation_plan.md` |
| Release gates/blockers             | `task.md`                |
| Voice-specific direction (planned) | `implementation_plan.md` |

---

## 4. Broadcast Format Recommendations

### A. "Diff Since Lock" Style

```markdown
## 2026-01-13 | DELTA

**vs implementation_plan.md:**

- ~~bg11 URL Scraper~~ → bg11 Smart Paste (CORS pivot)

**vs task.md:**

- NEW: bg13-bg16 Security Hardening (per Ana audit)
```

### B. "Hot Context" Style

```markdown
## 2026-01-13 | HOT CONTEXT

**Read First:**

- [Ana Audit v1.1.0](path/to/audit.md)
- [Gemini Pivot Brief](path/to/brief.md)
```

### C. "Voice Override" Style

```markdown
## 2026-01-13 | OVERRIDE

**@Ana:** Skip CSP this sprint (static HTML only)
**@Claude:** Use high-contrast for kitchen glare
```

---

## 5. Requested Actions

1. **Formalize this philosophy** in pertinent Playbook documentation
2. **Update sync workflows** to read BROADCAST → task → implementation_plan (in that order)
3. **Add the Mission Broadcast Template** (below) to Playbook templates

---

## 6. Mission Broadcast Template

```markdown
# MISSION BROADCAST

> Exceptions and deltas since sprint lock. Newest on top.  
> Voices: Read this BEFORE task.md and implementation_plan.md.

---

## [DATE] | [LABEL: DELTA | PIVOT | OVERRIDE | HOT CONTEXT]

**Summary:** [One-line description]

**Details:**

- [Change 1]
- [Change 2]

**Affected Voices:** [All | @Gemini | @Claude | @Ana | @Nova]

**References:**

- [Link to related artifact if any]

---

## [OLDER DATE] | [OLDER LABEL]

...

---

_Last Updated: [TIMESTAMP] by [VOICE]_
```

---

## 7. Example: CevicheBar v1.1.0 (If It Had a Broadcast)

```markdown
# MISSION BROADCAST

> Exceptions and deltas since sprint lock. Newest on top.

---

## 2026-01-11 | PIVOT

**Summary:** URL Scraper → Smart Paste

**Details:**

- bg11 was "Recipe URL import/scraper"
- CORS blocks client-side fetching
- Pivoted to "Smart Paste" (user copies page, we parse clipboard)

**Affected Voices:** @Gemini

**References:**

- [Gemini Scraper Brief](file:///path/to/scraper_recommendation.md)

---

## 2026-01-11 | DELTA

**Summary:** Security hardening added post-audit

**Details:**

- NEW: bg13 Fix ReDoS (10m)
- NEW: bg14 JSON size limit (5m)
- NEW: bg15 Field validation (20m)
- NEW: bg16 Parsing timeout (15m)

**Affected Voices:** @Gemini

**References:**

- [Ana Audit v1.1.0](file:///path/to/audit.md)

---

_Last Updated: 2026-01-11T20:40 by Opus_
```

---

_End Brief._
