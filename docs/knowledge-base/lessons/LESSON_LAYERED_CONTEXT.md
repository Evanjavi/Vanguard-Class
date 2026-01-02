# Lesson: Layered Context Hierarchy

**Date:** 2026-01-02  
**Project:** FlorSys  
**Category:** context

---

## Situation
Large projects accumulate many artifacts. Loading everything wastes tokens and dilutes focus.

## Action
Implemented L0-L5 priority layers:
- **L0**  Critical (DNA, active rules)  Always load
- **L1**  Architecture (schemas, protocols)  Load on refresh
- **L2**  WBS (current sprint)  Load when planning
- **L3**  History (THE_BOOK)  Load on demand
- **L4**  Code (active files)  Load when coding
- **L5**  Archives  Rarely load

## Result
Refresh script now loads only what's needed. Context stays focused. Token budget preserved.

## Lesson
**Prioritize ruthlessly.** Not all context is equal. Define layers early and stick to them.

---

*Captured by: Opus*
