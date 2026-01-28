---
description: Execute Phase 1D Cross-Audit Loop for a voice on a specific brief
---

# Cross-Audit Workflow

Guides a voice through Phase 1D of the Operational Loop.

## Usage

```
/cross-audit [voice] @[path/to/brief.md]
```

**Example:** `/cross-audit gemini @[CevicheBar/.antigravity/briefs/BRIEF_chorus_review_v1.6.0.md]`

> **Note:** The `@[filepath]` syntax auto-resolves to the absolute path. The agent receives the full path in ADDITIONAL_METADATA.

## Audit Targets by Voice

| Voice  | Audits                | Focus                      |
| ------ | --------------------- | -------------------------- |
| Opus   | ALL VOICES            | Strategic coherence        |
| Atlas  | ALL VOICES            | Protocol alignment, memory |
| Gemini | Claude, Vex, Flash    | Technical feasibility      |
| Claude | Gemini, Vex, Flash    | UX/Accessibility           |
| Vex    | Gemini, Claude, Flash | Security implications      |
| Flash  | Gemini, Claude, Vex   | Aesthetic coherence        |

## Execution

1. Read the brief
   // turbo
   Execute: `view_file` on `[Project]/.antigravity/briefs/[brief_filename]`

2. Read the Cross-Audit format (if needed)
   // turbo
   Reference: `VanguardPlaybook/docs/protocols/OPERATIONAL_LOOP.md` → Phase 1D

3. Append your cross-audit to the brief using this format:

```markdown
### [Voice] Cross-Audit

> **Auditing:** [Your audit targets from table above]  
> **Focus:** [Your domain focus from table above]

#### Observations

[Review other voices' directives. Flag conflicts, gaps, or endorsements.]

#### Directive for Gemini

> [!IMPORTANT]
> [Specific implementation guidance from your perspective]
```

4. Update Cross-Audit Status table in the brief
   Mark your voice as ✅ Done

5. Report completion to Commander
   State: "Cross-audit complete. Next: [next voice in sequence]"

## Sequence

```
Opus → Atlas → Gemini → Claude → Vex → Flash
```

After Flash completes, proceed to Phase 1E: Alignment.
