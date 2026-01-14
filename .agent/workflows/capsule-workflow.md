---
description: Create a versioned Time Capsule for FlorSys
---

# Time Capsule Protocol

This workflow preserves the current state of the project for long-term archival.

## Prerequisites

- Git is clean (Run `/verify-build` first)
- Dockerfile.timecapsule exists

## Execution

1.  **Seal the Capsule**:

    - Run the archivist script with the target version.

    ```bash
    node scripts/create_time_capsule.js [VERSION]
    ```

2.  **Verify Integrity**:

    - Check the `_capsules` directory.
    - Read `MANIFEST.json`.

3.  **Commit (Optional)**:
    - Capsules are usually ignored by git (too large), but can be pushed to cold storage.
