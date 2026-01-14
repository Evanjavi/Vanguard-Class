---
description: Read the active task and implementation plan for context synchronization
---

# Read Tasks Workflow

This workflow forces the agent to read the critical task definitions from the `.antigravity` directory.

## Execution

1.  **Identify Project:**

    - Determine the active project (e.g., `CevicheBar`).

2.  **Read Task Context:**

    - Use `view_file` to read `[Project]/.antigravity/task.md`.
    - Use `view_file` to read `[Project]/.antigravity/implementation_plan.md`.

3.  **Report:**
    - Summarize the current active phase and next steps based on the files read.
