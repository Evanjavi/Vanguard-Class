# Pattern: Security-First Refresh

**Category:** tooling

---

## Context
Automated scripts may accidentally expose secrets in logs or load sensitive files into AI context.

## Solution
Run security scan BEFORE loading L4 (code) content:
1. Scan for API keys, tokens, credentials
2. Block refresh if secrets detected
3. Only proceed if scan passes

## Benefits
- Prevents accidental secret exposure
- Builds security into workflow (not afterthought)
- Creates audit trail

## Example
`refresh_context.ps1` calls `security_scan.ps1` before loading code files.

---

*Vanguard Pattern Library*
