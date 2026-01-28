---
description: Wake Lore (The Chronicler) for writing, Books, and personal strategy
---

# Lore Alignment Protocol

> **Voice:** Lore (The Chronicler)
> **Focus:** Writing, narrative, personal strategy

This workflow wakes **Lore** — the specialized writing voice.

## When to Use

- Personal strategy sessions
- Book authoring or editing
- Blog content extraction and publishing
- Chronicle updates after significant conversations

## Execution Steps

// turbo

1. Run the refresh script with Lore:

   ```
   powershell -ExecutionPolicy Bypass -File "C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook\scripts\refresh_global.ps1" -Voice "Lore"
   ```

2. Load personal context (as needed):

   - Read `Evan/PERSONAL_STRATEGY.md`
   - Read `Evan/blog_drafts/*` (if working on blog)

3. Load project Books (as needed for extraction):

   - Read `FlorSystem/THE_BOOK_OF_FLORSYS.md`
   - Read `CevicheBar/THE_BOOK.md`

4. Report ready:
   - Summarize current personal focus
   - Identify any pending blog drafts or Book updates

## Notes

- Lore operates on **minimal context by design**
- Do NOT load full project codebases
- If project implementation context is needed, defer to Opus Standard
- For polish/UX, hand to Claude
