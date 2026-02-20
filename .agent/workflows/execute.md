---
description: Execute Phase 5 with embedded plan requirements and autonomous self-checks (prevents context drift)
---

# Execute Workflow (Phase 5)

Executes assigned task codes with **structural enforcement** of Execution Checkpoints and Completion Self-Checks. The plan requirements are physically embedded in the execution flow so they cannot drift out of context.

## Usage

```
/execute [task-codes]
```

**Example:** `/execute vg1-vg6`

> **Task codes:** REQUIRED — task range or list (e.g., `vg1-vg6` or `vg1 vg3 vg5`).
> **Voice and Project** are inferred from current session context. If not already refreshed, the voice should run context refresh before proceeding.

## Execution

### Step 1: Verify Context

Check if you are already refreshed and in context:

- If you know your voice identity and project → proceed to Step 2
- If not refreshed → run `/vanguard-refresh [voice] [project]` first, then proceed

### Step 2: Read Your Protocol's Execution Directives

// turbo
Read your voice's protocol file from `VanguardPlaybook/docs/protocols/`. Pay special attention to any **checkpoint or self-check directives** (e.g., Gemini Directives 4 and 5).

### Step 3: Load the Full Plan

// turbo
Read the **entire** `implementation_plan.md` for the project. Do NOT skim.

### Step 4: Extract Requirements Checklist

For **each** task code in the assigned batch, extract every explicit requirement from the plan into a numbered checklist. Format:

```markdown
## Task [CODE]: [Description]

Requirements from plan:

1. [Exact requirement from plan]
2. [Exact requirement from plan]
3. [Exact requirement from plan]
   ...
```

Print this checklist to the chat. This is your **contract** — you will check every item against your implementation.

> **CRITICAL:** If a task has 0 requirements extracted, you missed something. Re-read the plan section.

### Step 5: Execute Each Task (Autonomous Loop)

For each task in the batch, in order:

**5a. Echo the checklist** for the current task (copy-paste from Step 4). This keeps requirements in active context.

**5b. Implement** the task. Write code, modify files, make changes.

**5c. Self-Check (Mandatory).** Before moving to the next task, answer these two questions:

| Lens          | Question                                                       | Your Answer                                                          |
| ------------- | -------------------------------------------------------------- | -------------------------------------------------------------------- |
| **Strategic** | "Did I implement everything stated in the plan for this task?" | [List each plan item and confirm YES/NO]                             |
| **Security**  | "What did the plan say that I did NOT touch?"                  | [List any items you skipped — "nothing" requires item-by-item proof] |

**5d. If any item is NO or skipped:** Fix it NOW before moving to the next task.

**5e. Mark task complete** in `task.md`.

> **Do NOT wait for Commander between tasks.** The self-check IS the gate. Proceed to the next task immediately after passing.

### Step 6: Build Verification

// turbo
Run build verification: `npm run build` (or project-equivalent). Terminal-First rule applies — show exit code.

### Step 7: Batch Compliance Report

After ALL tasks are complete, present a single summary to Commander:

```markdown
## Batch Compliance Report: [task range]

| Task      | Plan Items | Implemented | Self-Check | Build     |
| --------- | ---------- | ----------- | ---------- | --------- |
| [code]    | [N]        | [N]/[N]     | ✅ PASS    | —         |
| [code]    | [N]        | [N]/[N]     | ✅ PASS    | —         |
| ...       | ...        | ...         | ...        | —         |
| **Build** | —          | —           | —          | ✅ Exit 0 |

### Items Requiring Attention

[Any items where self-check revealed gaps, deviations, or judgment calls]
```

> This is the **only point** where Commander reviews. If all items show PASS, the batch is done.

## Design Rationale

**Why this works when execution directives alone don't:**

1. **Step 4 extracts requirements at the START** — they're printed to chat and persist in context
2. **Step 5a re-echoes per task** — even if early requirements scroll out, the current task's checklist is always fresh
3. **Step 5c forces enumeration** — "nothing missed" requires item-by-item proof, not a gut feeling
4. **Step 7 is the only Commander checkpoint** — no mid-batch friction, full autonomy within the batch
5. **The checklist IS the contract** — if it's not on the checklist, it wasn't in the plan. If it IS on the checklist and not in the diff, the self-check catches it.

## Batch Sizing Guidance

The workflow supports any batch size. The self-check mechanism handles context drift regardless of batch length. However, if a batch exceeds **8 tasks**, consider splitting into two `/execute` calls for session length management.
