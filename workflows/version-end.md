---
description: Complete the version release protocol
---
# Version End Workflow

## Pre-Release Checks

1. Run build verification:
   `npm run build` (or equivalent)

2. Check for lint errors:
   `npm run lint` (if available)

// turbo
3. Run security scan:
   `powershell -ExecutionPolicy Bypass -File scripts\security-scan.ps1`

## Documentation Updates

4. Update WBS.md:
   - Move completed items to Completed section
   - Mark current version as done

5. Update THE_BOOK.md:
   - Add version entry with date
   - Document key decisions
   - Note lessons learned

6. Update README.md if needed

## Backup & Commit

// turbo
7. Create git commit:
   `git add . && git commit -m \"v[X.Y.Z]: [Description]\"`

8. Create git tag:
   `git tag v[X.Y.Z]`

9. Push to remote:
   `git push && git push --tags`

## Handoff

10. Create HANDOFF_NOTE.md with:
    - What was done
    - Decisions made
    - What's next

---

*Never skip the protocol.*
