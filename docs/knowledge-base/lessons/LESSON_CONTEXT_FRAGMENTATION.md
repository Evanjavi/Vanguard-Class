# Lesson: Context Fragmentation

**Date:** 2026-01-02  
**Project:** FlorSys  
**Category:** context

---

## Situation
During multi-session development, each voice (Gemini, Opus, Claude, Ana) operated with partial context. New sessions started cold, requiring time to rebuild understanding.

## Action
Implemented a layered context system (L0-L5) with refresh scripts and handoff protocols.

## Result
Context refresh now takes seconds instead of minutes. Handoffs preserve decision history. Continuity across sessions improved dramatically.

## Lesson
**Never assume context persists.** Build explicit systems for:
- Context hierarchy (what MUST load vs. nice-to-have)
- Refresh automation (scripts, not manual)
- Handoff artifacts (what the next voice needs)

---

*Captured by: Opus*
