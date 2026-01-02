# Anti-Pattern: Silent Regression

**Category:** execution

---

## Symptom
Bugs reappear. Previously working features break without notice.

## Cause
- No build verification before declaring done
- Missing tests
- Assuming ""it still works""

## Solution
- Always run `/verify-build` before declaring complete
- Add regression checks for fixed bugs
- Visual spot-checks for UI changes

## Real Example
FlorSys Logistics Bar dropdown broke silently after CSS changes. Caught only by manual testing.

---

*Vanguard Anti-Pattern Library*
