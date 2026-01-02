# Anti-Pattern: Premature Componentization

**Category:** architecture

---

## Symptom
Code is split into many tiny components before patterns emerge. Refactoring becomes constant.

## Cause
- ""Best practice"" cargo-culting
- Fear of large files
- Over-anticipating reuse

## Solution
- Keep code inline until you see actual duplication
- Extract when reused twice, not before
- Let patterns emerge naturally

## Real Example
Early FlorSys had micro-components. Consolidated after recognizing most weren't reused.

---

*Vanguard Anti-Pattern Library*
