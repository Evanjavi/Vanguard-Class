# Pattern: Artifact Schema

**Category:** architecture

---

## Context
Untyped artifacts become unmanageable. ""What is this file? Who owns it?""

## Solution
Define artifact types with required metadata:
- `implementation_plan`  proposed changes
- `walkthrough`  proof of work
- `task`  active checklist
- `decision`  captured choices

Each artifact has: type, summary, owner, date.

## Benefits
- Discoverability (search by type)
- Accountability (who created this?)
- Lifecycle management (when to archive)

## Example
`ARTIFACT_SCHEMA.md` in FlorSys defines all valid artifact types.

---

*Vanguard Pattern Library*
