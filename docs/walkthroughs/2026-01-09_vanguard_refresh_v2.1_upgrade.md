# Walkthrough - Vanguard Playbook Upgrade (v2.1)

**Mission:** Enhance the Central Command infrastructure to support parallel execution, strict context sovereignty, and proactive system health monitoring.

---

## 🏗️ 1. Context Sovereignty (Refresh v3.0.0)

I upgraded `refresh_global.ps1` to eliminate "Default" behaviors.

- **Strict Voice:** The `-Voice` parameter is now **MANDATORY**.
- **Model Alignment:** Script checks if the correct Model Family is active for the requested Voice.
- **Context Filtering:**
  - **Anti:** Maximum Context (Legacy + Decisions).
  - **Opus:** Strategy Context (Standards + The Book).
  - **Nova:** Velocity Context (New `NOVA_PROTOCOL.md`).

## 📚 2. Playbook Improvements (v2.1)

Standardized "Lessons Learned" into global doctrine.

- **Central Command:** Updated `CORE_DOCTRINE.md` to define Playbook as the immutable "System of Truth".
- **Capabilities Matrix:** Updated `VOICE_PROTOCOLS.md` with a Primary/Alternate capability table (e.g., Anti backs up Gemini).
- **SOP Distillation:** Assigned Anti the responsibility of extracting new protocols from project logs.
- **Templates Created:**
  - `DECISION_BRIEF_TEMPLATE.md` (Inc. Chorus Review)
  - `WALKTHROUGH_TEMPLATE.md` (Technical Proof)
  - `THE_BOOK_TEMPLATE.md` (Narrative History)

## 📉 3. Session Odometer

Implemented a "Traffic Light" signal to prevent context decay.

- **Mechanism:** `task.md` header now tracks `Last Update` timestamp + Signal.
  - 🟢 **Fresh** (<30m)
  - 🟡 **Heavy** (30-60m)
  - 🔴 **Critical** (>60m)
- **Protocol:** Documented in `OPTIMIZATION_PROTOCOL.md`.

## 📡 4. System Broadcast

Created a mechanism for high-priority system announcements.

- **News Feed:** `VanguardPlaybook/BROADCAST.md`.
- **Injection:** `refresh_global.ps1` displays the top 5 broadcast lines at the end of every refresh.

## 🔄 5. Continuous Context Sync

Updated `ANTI_PROTOCOL.md`.

- **New Directive:** Mandatory check of `task.md` and `implementation_plan.md` every 10 turns to prevent drift.

---

## Verification

| Feature          | Test                   | Result                          |
| :--------------- | :--------------------- | :------------------------------ |
| **Strict Voice** | Run without `-Voice`   | ✅ Error/Prompted               |
| **Max Context**  | Run as `Anti`          | ✅ Loaded `THE_BOOK`            |
| **Broadcast**    | Run Refresh            | ✅ Displayed "System Broadcast" |
| **Odometer**     | Check `task.md` header | ✅ Shows "🟢 Fresh"             |

_Mission Complete._
