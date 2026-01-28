# 🧰 Vanguard Skill Library

**Status:** Live Registry  
**Location:** Global (`~/.gemini/antigravity/global_skills/`)  
**Access:** All Voices, All Workspaces

---

## 🎯 Purpose

This document lists the "Hardcoded Capabilities" available to the Chorus. Unlike loose text protocols, these Skills are executable units that enforce specific behaviors, templates, and checks.

**Rule of Law:** Per Constitution Article V, when a Skill is invoked, its logic overrides individual voice preferences.

---

## 📚 Active Skills

### 1. Chorus Review (`chorus-review`)

**Purpose:** Enforces the "Cross-Review Mandate" (Constitution Article IV). It ensures that every specific voice audits the project from their domain perspective (Security, UX, Architecture, etc.).

- **Trigger:** "Execute chorus review", "Run review matrix", "Review this brief".
- **Prerequisite:** You MUST `view_file` the target document first.
- **Behavior:**
  - Identifies the Active Voice.
  - Generates **only** that voice's review (Identity Discipline).
  - Uses the standard `review_response.md` template.

### 2. Flash Verify (`flash-verify`)

**Purpose:** Enforces the "Terminal First" Doctrine (Constitution Article III). It serves as the automated "Definition of Done".

- **Trigger:** "Verify this", "Run flash verify", "Check the build".
- **Behavior:**
  - Runs `scripts/verify_build.ps1` (Compilation check).
  - Parses the exit code (Pass/Fail).
  - Generates a `verification_report.md` with terminal evidence.

---

## 🛠️ How to Add Skills

1.  **Draft:** Create the folder structure in `~/.gemini/antigravity/global_skills/[name]`.
2.  **Define:** Write `SKILL.md` (MUST include Identity Discipline check).
3.  **Tool:** Add `scripts/` (PowerShell/Node) for execution.
4.  **Form:** Add `templates/` for consistent output.
5.  **Register:** Update this document.

---

_Managed by Atlas_
