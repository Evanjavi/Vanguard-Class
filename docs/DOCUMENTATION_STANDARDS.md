# Documentation Standards

**Version:** 1.0.0  
**Purpose:** Consistent documentation across all Vanguard projects.

---

## File Naming

| Type | Pattern | Example |
|------|---------|---------|
| DNA | `PROJECT_DNA.md` | Fixed name |
| WBS | `WBS.md` | Fixed name |
| History | `THE_BOOK.md` | Fixed name |
| Handoff | `HANDOFF_NOTE.md` | Fixed name |
| Decision | `DECISION_[TOPIC].md` | `DECISION_AUTH.md` |
| Lesson | `LESSON_[TOPIC].md` | `LESSON_CONTEXT.md` |
| Pattern | `PATTERN_[NAME].md` | `PATTERN_WBS.md` |
| Anti-Pattern | `ANTI_[NAME].md` | `ANTI_SCOPE_CREEP.md` |

---

## Document Structure

### All Documents Must Have:

1. **Title** (H1)
2. **Metadata** (Version, Date, Owner)
3. **Purpose** (1-2 lines)
4. **Content sections**
5. **Signature** (Vanguard Class)

### Example Header:

```markdown
# Document Title

**Version:** 1.0.0  
**Date:** [Date]  
**Owner:** [Voice]

---

## Purpose

[Brief description]

---

[Content]

---

*Vanguard Class*
```

---

## Versioning

| Document Type | Versioning |
|---------------|------------|
| Protocols | Semantic (v1.0.0) |
| Templates | Semantic (v1.0.0) |
| Project docs | Match project version |
| Lessons/Patterns | No version (append-only) |

---

## Formatting Rules

1. **Use tables** for structured data
2. **Use code blocks** for commands/paths
3. **Use alerts** for warnings
4. **Keep lines short** (<80 chars when possible)
5. **Use relative paths** when referencing project files

---

*Vanguard Class Documentation Standards*
