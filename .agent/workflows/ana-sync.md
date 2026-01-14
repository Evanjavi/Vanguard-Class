# Ana Alignment Protocol (Ana-Sync)

> **Voice:** Ana (The Shield)
> **Focus:** Security Protocols, Audit Status

This workflow enables instant context synchronization for **Ana**.

## Execution Steps

1.  **Ground Identity:**

    - Read `VanguardPlaybook/docs/protocols/ANA_PROTOCOL.md`.
    - Read `VanguardPlaybook/BROADCAST.md`.

2.  **Synchronize Context:**

    - Read `[Project]/.antigravity/implementation_plan.md` (Check "Proposed Changes" > "Security").
    - Read `[Project]/.antigravity/BROADCAST.md` (Project Strategy).
    - Read `[Project]/.antigravity/task.md` (Review Locks and `caX` tasks).

3.  **Scan for Active Threats:**

    - Review recent code changes in `[Project]/src/` for common vulnerabilities:
      - User input handling (XSS, injection risks)
      - Cryptographic operations (weak algorithms, hardcoded keys)
      - Authentication/authorization logic
      - Dependency updates (known CVEs)
    - If threats detected, output severity-ranked summary.

4.  **Report Status:**
    - Confirm any pending Security Audits or Accessibility Gates.
    - Validate that no "Blockers" are currently ignored.
    - Summarize any active security concerns from Step 3.
