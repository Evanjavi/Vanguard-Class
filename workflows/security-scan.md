---
description: Run security audit before releases
---
# Security Scan Workflow

## Steps

// turbo
1. Run security scan:
   `powershell -ExecutionPolicy Bypass -File scripts\security-scan.ps1`

2. If PASS: Proceed with release

3. If FAIL:
   - Review flagged files
   - Remove or secure exposed secrets
   - Re-run scan

## What It Checks

- API keys
- Secret keys
- Passwords
- Tokens
- Firebase configs
- AWS credentials

## After Scan

4. If clean, document in HANDOFF_NOTE.md:
   `Security Gate: PASS`

5. Proceed with version-end workflow

---

*Never ship secrets.*
