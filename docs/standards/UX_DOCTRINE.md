# UX Doctrine

# Vanguard Class — Central Command

**Purpose:** Rules of engagement for human-computer interaction.
**Owner:** Claude (Voice of Beauty)
**Status:** Standard

---

## 1. Physics (The Touch Target Law)

**Rule:** Everything reachable must be touchable.

- **Minimum:** 48px × 48px for all interactive elements (Buttons, Inputs).
- **Reason:** Fat fingers are a universal constant.
- **Padding:** Use `padding`, not `margin`, to increase hit areas.

## 2. Context Awareness

**Rule:** The app adapts to the user's physical reality.

- **Wake Lock:** If the user cannot touch the screen (cooking, driving), keep the screen on.
- **Contrast:** High contrast text for distance viewing (Cook Mode Standard).
- **Dark Mode:** Respect system preference `prefers-color-scheme`.

## 3. Motion with Meaning

**Rule:** Animation is information, not decoration.

- **Feedback:** Buttons must react (Active state/Transform) instantly.
- **Transition:** Layout changes (Accordions, Page Nav) must be smooth, not instant.
- **Urgency:** Use "Pulse" or "Blink" ONLY for critical alerts (Timers, Errors).

## 4. Typography Scale

**Rule:** Math, not guesswork.

- **Fluid Type:** Use `clamp()` for responsive font sizing.
- **Hierarchy:** `h1` > `h2` > `h3` must be visually distinct by size, weight, or color.
- **Readability:** max-width for text blocks (65 chars is ideal).

---

_Vanguard Class — Central Command_
