# Pattern: Safety Net Checkpoints

**Category:** workflow

---

## Context
Risky experiments (refactors, architecture changes) can break working code.

## Solution
Before risky work:
1. Git commit with clear message
2. Backup artifacts to separate location
3. Document what you're about to try

If it fails: revert. If it works: commit and document.

## Benefits
- Fear of experimentation reduces
- Recovery is fast
- Decision history preserved

## Example
`/create-safety-net` workflow in FlorSys creates checkpoint before major changes.

---

*Vanguard Pattern Library*
