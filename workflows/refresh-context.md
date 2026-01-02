---
description: Load context layers for a specific voice
---
# Context Refresh Workflow

## Steps

// turbo
1. Run: `powershell -ExecutionPolicy Bypass -File scripts\refresh-context.ps1 -Voice \"[VOICE_NAME]\"`

2. Verify L0 files loaded (PROJECT_DNA.md)

3. Verify L1 files loaded (WBS.md, protocols)

4. Report readiness: \"Context loaded for [VOICE]. Ready.\"

## Voice-Specific Notes

- **Gemini:** Load all layers for maximum context
- **Opus:** Skip L4 (code) for strategy sessions
- **Claude:** Focus on component files for polish
- **Ana:** Run security scan first

---

*Vanguard Workflow*
