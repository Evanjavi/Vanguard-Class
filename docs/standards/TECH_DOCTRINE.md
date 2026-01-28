# Tech Doctrine

# Vanguard Class — Central Command

**Purpose:** Architectural laws that govern code structure across all projects.
**Status:** Standard (Project-Specific overrides allowed)

---

## 1. Simplicity as Law

**Rule:** Entry points (`App.jsx`, `main.ts`, `index.js`) must be **Lean**.

- **Limit:** < 200 lines.
- **Reason:** If the entry point is complex, the architecture is wrong.

## 2. Architecture Standard (Feature-Based)

Code must be organized by **Feature**, not by Technical Type.

**Standard Directory Structure:**

The codebase is strictly layered into 3 tiers. Dependencies flow **Down**.

| Tier            | Path            | Responsibility                                         | Can Import From             |
| :-------------- | :-------------- | :----------------------------------------------------- | :-------------------------- |
| **1. Shared**   | `src/shared/`   | Dumb UI (Buttons, Inputs), Utilities, Global Styles.   | **Libs Only** (No App Code) |
| **2. Core**     | `src/core/`     | Business Logic, Database, Auth Provider, Global Hooks. | `Shared`                    |
| **3. Features** | `src/features/` | Domain Modules (Recipes, Dashboard, Settings).         | `Core`, `Shared`            |

**The Golden Rules:**

1.  **Strict Hierarchy:** A higher tier typically depends on a lower tier.
2.  **No Cross-Imports:** A Feature **MUST NOT** import relevant code from another Feature (e.g., `recipes` cannot import `auth`). If they share logic, move it to `Core` or `Shared`.
3.  **Feature Isolation:** Each feature folder (`src/features/xyz/`) should contain its own components, hooks, and styles.

_A Component should never talk directly to an API. It uses a Hook (from Core/Feature), which uses a Service (from Core)._

## 3. Self-Healing Systems

**Rule:** Assume failure.

- **Scenario:** API is down. **Action:** Show cached data or graceful "offline" state.
- **Scenario:** Data is missing. **Action:** Component handles `null` without crashing.
- **Scenario:** User enters garbage. **Action:** Sanitization, not explosion.

_A white screen of death is a developer failure, not a system error._

## 4. Verification as Infrastructure

**Rule:** Tests are part of the house.

- **Requirement:** Critical paths (Auth, Money, Data Loss) MUST be tested.
- **Timing:** Tests are written _with_ the code, not after.
- **Efficiency:** **Terminal-First Verification.**
  - NEVER rely on manual browser clicks for multi-step flows.
  - Write scripts (`node verify.js`) that run 100% autonomously.

## 5. Visual Consistency (Design Tokens)

**Rule:** No Magic Numbers.

- **Bad:** `padding: 12px`
- **Good:** `padding: var(--space-md)`
- **Reason:** When we change the system, the whole ship should move.

## 6. Data Sovereignty (The Local-First Law)

**Rule:** User data belongs to the user (Local execution).

- **Persistence:** Use IndexedDB (via Dexie.js) as the _primary_ store.
- **Portability:** Apps must support "Export to JSON" / "Import from JSON" (Vault Protocol).
- **Fallbacks:** Cloud is a sync service, not the master database.

## 7. Data Integrity (The Cascade Law)

**Rule:** No Orphaned Data.

- **Cascade Deletes:** Deletion of a parent record (Recipe) MUST transactionally delete all children (Links, Tags).
- **Auto-Sanitization:** Client-side databases accumulate cruft. Implement **Boot-Time Sanitizers** (`useDataSanitizer`) to silently purge orphans.
- **ID Safety:** In hybrid systems (Legacy IDs + New IDs), always use a `normalizeId()` helper. Never assume `integer` or `string`.

---

_Vanguard Class — Central Command_
