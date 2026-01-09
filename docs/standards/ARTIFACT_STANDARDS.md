# Artifact Standards

# Vanguard Class Reference

**Version:** 1.0.0
**Status:** Active
**Owner:** Opus (XO)

---

## Purpose

Artifacts are the **long-term memory** of the Chorus. They persist across conversation truncations and session boundaries.

---

## Artifact Categories

| Category         | Location                                | Naming Pattern            | Purpose                                  |
| ---------------- | --------------------------------------- | ------------------------- | ---------------------------------------- |
| **Briefs**       | `brain/`                                | `{VOICE}_BRIEF_v{X.X}.md` | Handoff instructions to a specific voice |
| **Walkthroughs** | `brain/`                                | `walkthrough.md`          | Post-completion proof of work            |
| **Tasks**        | `brain/`                                | `task.md`                 | Active checklist (living document)       |
| **Decisions**    | `brain/`                                | `DECISION_{topic}.md`     | Architectural choices with rationale     |
| **Capsules**     | `VanguardPlaybook/docs/knowledge-base/` | `CAPSULE_v{X.X}.md`       | Time-frozen version snapshots            |
| **Registries**   | `[Project]/`                            | `{NAME}_REGISTRY.md`      | Indices of components, patterns, etc.    |
| **Protocols**    | `VanguardPlaybook/docs/protocols/`      | `{NAME}_PROTOCOL.md`      | Operational procedures                   |
| **DNA**          | `VanguardPlaybook/docs/protocols/`      | `CHORUS_DNA.md`           | Core identity and structure              |

---

## Lifecycle Rules

### Creation

- **Create before switching voices** — If you have context others need, write it down
- **Create at session end** — Always leave a handoff artifact

### Updates

- **task.md** — Update continuously during execution
- **walkthrough.md** — Overwrite at task completion
- **Briefs** — Create new file per handoff (don't overwrite)

### Archival

- Move stale briefs to `brain/archive/` after consumption
- Capsules are permanent (never delete)

---

## Integration with Voices

| Voice      | Primary Artifacts        | Consumption Pattern                  |
| ---------- | ------------------------ | ------------------------------------ |
| **Gemini** | Registries, Walkthroughs | Creates most, reads all              |
| **Opus**   | Decisions, Protocols     | Creates strategy, reads briefs       |
| **Claude** | Walkthroughs             | Reads briefs, creates polish reports |
| **Ana**    | Security audits          | Reads code, creates risk reports     |

---

_Vanguard Class — Standards_
