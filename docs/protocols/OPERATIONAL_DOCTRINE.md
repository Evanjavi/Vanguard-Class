# Operational Doctrine

# Vanguard Class — Central Command

**Purpose:** The hard rules of engagement for all Vanguard operations.
**Status:** Doctrine (Immutable)

---

## 1. The Manual Recreation Standard

**Context:** Prevents corruption in complex files.
**Trigger:** Any file > 100 lines or containing complex logic/state.
**Rule:**

> **NEVER** use search/replace tools (sed, regex, diff-patch) on these files.
> **ALWAYS** read the file content, apply changes in memory, and rewrite the **entire** file.

_It is better to spend 5 seconds rewriting than 5 hours debugging a bad patch._

---

## 2. The Handoff Protocol

**Context:** Ensured continuity between agents.
**Rule:** No agent leaves the post without a briefing.

**Required Handoff Fields:**

1.  **Context:** Where are we? (State)
2.  **Goal:** What is next? (Intent)
3.  **Do/Don't:** Specific boundaries.
4.  **Stop Condition:** When to halt.

_A handoff without context is a dereliction of duty._

---

## 3. The Time Capsule Protocol

**Context:** Preserves project history without clutter.
**Rule:** Backups must be **Clean** and **Isolated**.

- **Location:** Outside the project root (e.g., `../Project_Capsules/`).
- **Content:** Source code `src/`, config files, `PROJECT_DNA.md`.
- **Exclusions:** `node_modules`, `dist/`, `.git/`.
- **Frequency:** At Major Versions (v0.1, v0.2, etc.).

_We do not hoard debris. We preserve milestones._

---

## 4. The Data Sovereignty Rule

**Context:** User trust and safety.
**Rule:**

> "If the user cannot leave with their data, we do not build the wall."

- **Requirement:** Export/Import (JSON/File) MUST exist before Cloud Auth.
- **Reason:** We serve the user, not the platform.

---

## 5. The Refinery Model

**Context:** How The Chorus works.
**Structure:**

- **Anchor (Gemini/Anti):** The default state. Holds context, executes, maintains memory.
- **Specialist (Opus/Claude/Ana):** Temporary activation. Enters, performs task, exits.
- **Commander:** The human decision maker.

**Flow:**
`Commander -> Anchor -> Specialist -> Anchor -> Output`

_The Anchor is the hub. The Specialists are the spokes._

---

_Vanguard Class — Central Command_
