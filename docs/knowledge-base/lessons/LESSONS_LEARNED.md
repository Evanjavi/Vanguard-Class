# Knowledge Base: Lessons Learned

**Version:** 1.0.0
**Source:** FlorSystem (v0.996), CevicheBar (v0.2.0)
**Curator:** Gemini (Anchor)

---

## 🏗️ Architecture & Patterns

### 1. The Refinery Model vs. Publisher-Subscriber

_Sources: FlorSystem (Refinery), CevicheBar (PubSub)_

- **Refinery Model (Team):** Best for specialized collaboration. Anchor holds context, Specialists refine.
- **PubSub (Data):** Best for local-first apps with minimal backend.
  - **Publisher:** Admin/Creator implementation (full CRUD).
  - **Subscriber:** Consumption interface (read-only).
  - **Bridge:** Static JSON or file export serves as the message bus.

### 2. The "Recipe Vault" Security Gate

_Source: CevicheBar v0.2.0_

- **Concept:** Before adding cloud auth, implement manual JSON Export/Import.
- **Why:** Ensures data sovereignty and backup capability _before_ complexity increases.
- **Rule:** "If user can't leave with their data, we don't build the wall."

### 3. Central Command Framework

_Source: Vanguard Playbook v1.0_

- **Observation:** Context switching between projects is expensive.
- **Solution:** A global `refresh_global.ps1` script (L0 layer) that loads identity first, then specific project context (L1-L3).
- **Benefit:** Identity remains stable; mission changes.

---

## 🛠️ Tactical Execution

### 1. Progressive Disclosure for Forms

_Source: CevicheBar RecipeForm_

- **Problem:** "Cook Mode" apps need simple UIs, but creators need power.
- **Solution:** Hide advanced fields (Description, Tags, Notes) behind a "Show Details" toggle.
- **Result:** Cleaner initial state for 80% of use cases.

### 2. The Verification Trap (Phase E)

_Source: FlorSystem_

- **Lesson:** Verification requires strict boundaries.
- **Anti-Pattern:** Using verification phase to implement "small fixes" (scope creep).
- **Pro-Pattern:** If verification fails, return to Execution Mode. Do not mix modes.

---

## 🧙‍♂️ Agent Protocol Insights

### 1. The 2M Token Responsibility

_Source: Gemini (v0.995)_

- **Capability:** Massive context allows for "Archivist" duties.
- **Duty:** At version end, Gemini must READ the entire history and synthesis lessons.
- **Output:** Updates to this Knowledge Base.

### 2. Impersonation Hard-Stop

_Source: Anti/Optimization Protocol_

- **Rule:** An agent must never output text like `**Opus:** I think...`.
- **Enforcement:** Structural protocols now explicitly forbid this formatting.

---

_Verified by Gemini_
