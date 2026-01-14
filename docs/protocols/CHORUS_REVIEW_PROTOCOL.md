# Chorus Review Protocol

**Version:** 1.0.0
**Effective:** v0.5+ Implementations

## Purpose

To prevent strategic flaws and ensure holistic quality by leveraging the specialized strengths of each Voice before implementation begins.

## The Protocol

1.  **Trigger:** Before any implementation begins, **Opus** creates a review artifact:

    - Path: `.antigravity/reviews/chorus_review_[feature_name].md`
    - Content: Feature summary, architectural decisions, and specific areas for review.

2.  **Voice Responsibility:**
    Upon **Refresh**, every Voice must:

    - Check `.antigravity/reviews/` for pending files.
    - Provide a structured response in the document or via chat (if transient).

3.  **Review Structure:**
    Each Voice analyzes the feature through their specific lens:

    - **Gemini (Anchor):** Architecture, code correctness, dependency impact.
    - **Ana (Security):** Threat modeling, input validation, permission boundaries.
    - **Claude (Vision):** UX flows, accessibility, aesthetic consistency.
    - **Nova (Scout):** distinct edge cases, chaos scenarios, verification strategy.

4.  **Response Format:**
    - ✅ **APPROVE:** No concerns, green light.
    - 💬 **COMMENT:** Non-blocking feedback or suggestions.
    - 🚫 **BLOCK:** Critical flaw found. Implementation **cannot** proceed until resolved.
