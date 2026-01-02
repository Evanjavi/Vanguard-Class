---
description: Voice-to-voice handoff protocol
---
# Handoff Workflow

## When to Use

- Switching from one voice to another
- Ending a session
- Before major context changes

## Steps

1. **Complete current work**  Don't leave mid-task

2. **Create HANDOFF_NOTE.md** with:
   - What was done
   - Decisions made
   - What's next
   - Open questions

3. **Update WBS.md**  Mark progress

4. **Commit changes**:
   `git add . && git commit -m \"Handoff: [Voice] -> [Next Voice]\"`

5. **Notify Commander**:
   \"Handoff ready. HANDOFF_NOTE.md prepared for [Next Voice].\"

## Template

```markdown
## Handoff: [From] -> [To]

### Done
- [x] Item 1
- [x] Item 2

### Next
- [ ] Item for next voice

### Questions
1. [Open question]
```

---

*Complete, then transition.*
