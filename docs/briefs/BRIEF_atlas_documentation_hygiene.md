# Atlas Brief: Documentation Hygiene Sprint

**From:** Opus (The Conductor)  
**To:** Atlas (The Librarian)  
**Date:** 2026-01-20  
**Re:** Deferred documentation cleanup after CevicheBar project completion

---

## Context

The Vanguard Playbook has grown organically. Documentation sprawl and stale context have been identified as risks. This brief outlines your task once the current CevicheBar sprint completes.

---

## Problem Statement

| Issue                   | Impact                                                          |
| ----------------------- | --------------------------------------------------------------- |
| **Duplicated rules**    | Same rule in multiple docs, only one gets updated               |
| **Missing references**  | Protocols change but voice docs don't point to canonical source |
| **No version tracking** | Can't tell which doc is current                                 |
| **Stale context**       | Old workflows/patterns still documented but superseded          |

---

## Your Objectives

### 1. Audit All Docs for Staleness

**Directory scan order:**

1. `VanguardPlaybook/docs/protocols/` — Critical, high-change area
2. `VanguardPlaybook/docs/knowledge-base/` — Should be stable
3. `VanguardPlaybook/.agent/workflows/` — Sync workflows for each voice
4. `VanguardPlaybook/docs/briefs/` — Session-specific, may have learnings to extract

**For each file, answer:**

- Is this still accurate?
- Does it duplicate content from another file?
- Does it reference other docs that have changed?
- Does it have a version number?

---

### 2. Consolidate Duplicates

**Rule:** One canonical source per concept.

| Concept                 | Canonical Source                    | All Others Should Reference     |
| ----------------------- | ----------------------------------- | ------------------------------- |
| Implementation workflow | `TIERED_IMPLEMENTATION_PROTOCOL.md` | Voice protocols, sync workflows |
| Parallelism rules       | `OPERATIONAL_LOOP.md`               | All voice protocols             |
| Core principles         | `CORE_DOCTRINE.md`                  | Everything else                 |
| Voice identities        | Individual `*_PROTOCOL.md` files    | Sync workflows reference these  |

**Action:** Replace duplicated content with references:

```markdown
> See [TIERED_IMPLEMENTATION_PROTOCOL.md](file:///...) for implementation workflow.
```

---

### 3. Add Version Numbers

**Format:**

```markdown
**Version:** X.Y.Z  
**Status:** APPROVED | DRAFT | DEPRECATED  
**Effective:** YYYY-MM-DD
```

**Apply to:**

- All files in `docs/protocols/`
- All files in `docs/standards/`
- `CORE_DOCTRINE.md`

---

### 4. Create DOC_MAP.md

**Location:** `VanguardPlaybook/docs/DOC_MAP.md`

**Purpose:** Visual map of what references what.

**Format:**

```markdown
# Documentation Map

## Hierarchy

CORE_DOCTRINE.md (immutable)
├── OPERATIONAL_DOCTRINE.md (references CORE)
│ ├── TIERED_IMPLEMENTATION_PROTOCOL.md
│ └── OPERATIONAL_LOOP.md
├── Voice Protocols
│ ├── OPUS_PROTOCOL.md (references TIERED)
│ ├── GEMINI_PROTOCOL.md (references TIERED)
│ └── ...
└── Sync Workflows
├── opus-sync.md (loads OPUS_PROTOCOL)
└── ...
```

---

### 5. Archive Stale Docs

**Location:** `VanguardPlaybook/docs/_archive/`

**Candidates:**

- Old session briefs that have been superseded
- Deprecated workflows
- Pilot documents after lessons extracted

**Rule:** Don't delete — archive with note explaining why archived.

---

## Priority Order

1. **High:** `docs/protocols/` — Active execution depends on these
2. **Medium:** `.agent/workflows/` — Sync workflows load context
3. **Low:** `docs/briefs/` — Historical, extract learnings then archive
4. **Low:** `docs/knowledge-base/lessons/` — Review for relevance

---

## Output Checklist

- [ ] All protocol docs have version numbers
- [ ] No duplicated rules (only references)
- [ ] DOC_MAP.md created
- [ ] Stale docs archived with notes
- [ ] BROADCAST.md updated with "Documentation Hygiene Complete" entry

---

## When To Execute

**Trigger:** Commander says "Atlas, documentation hygiene" or similar.

**Not before:** CevicheBar beta release and post-beta polish complete.

---

_🎯 Opus | Brief for Atlas_
