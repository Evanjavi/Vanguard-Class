# Tech Doctrine

# Vanguard Class — Central Command

**Purpose:** Architectural laws that govern code structure across all projects.
**Status:** Standard (Project-Specific overrides allowed)

---

## 1. Simplicity as Law

**Rule:** Entry points (`App.jsx`, `main.ts`, `index.js`) must be **Lean**.

- **Limit:** < 200 lines.
- **Reason:** If the entry point is complex, the architecture is wrong.

## 2. Separation of Concerns (The Four Pillars)

Code must be strictly organized by responsibility:

1.  **Contexts/State:** "Where Truth Lives" (Auth, Theme, Data).
2.  **Hooks:** "How We Touch Truth" (Access patterns).
3.  **Services:** "How We Talk to the World" (API, Storage).
4.  **Components:** "How It Looks" (UI, dumb presentation).

_A Component should never talk directly to an API. It uses a Hook, which uses a Service._

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

---

_Vanguard Class — Central Command_
