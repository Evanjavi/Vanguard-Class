# Security Doctrine

# Vanguard Class — Central Command

**Purpose:** Non-negotiable security requirements for all Vanguard projects.
**Owner:** Vex (Voice of Protection)
**Status:** Standard

---

## 1. The Input Boundary (The airlock)

**Rule:** All user input is toxic until proven safe.

- **Length Limits:** Every text input must have a `maxLength` (Max 50k chars for textareas).
- **Type Safety:** Never trust implicit type conversion.
  - Right: `parseInt(value, 10)`
  - Wrong: `+value`
- **Sanitization:** HTML injection is forbidden. Use `DOMPurify` if rich text is required.

## 2. Regex Safety (The ReDoS Trap)

**Rule:** Regex is a denial-of-service vector.

- **Requirement:** Keep patterns simple. Avoid nested quantifiers `(a+)+`.
- **Constraint:** Run regex on bounded strings only (enforce length limit FIRST).
- **Audit:** Any new regex must pass an "Evil Input" test during review.

## 3. The Secrets Firewall

**Rule:** No keys in the code.

- **Scanning:** `security_scan.ps1` runs before every major commit.
- **Pattern:** API keys, Private Keys, and Passwords are strictly `.env` only.

## 4. State Integrity

**Rule:** Application state must be recoverable.

- **Backup:** Destructive actions (Delete/Reset) must offer a confirmation or Undo.
- **Vault:** Export/Import features must validate schema versioning.

---

_Vanguard Class — Central Command_
