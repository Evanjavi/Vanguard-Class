---
description: Execute Phase 1C Cross-Audit for a voice on a specific brief (includes context refresh)
---

# Cross-Audit Workflow

Guides a voice through Phase 1C of the Operational Loop (v6.0).

## Usage

```
/cross-audit [voice] [project] @[path/to/brief.md]
```

**Example:** `/cross-audit gemini CevicheBar @[CevicheBar/.antigravity/briefs/BRIEF_phase_v_viewer_parity.md]`

> **Voice:** REQUIRED — the voice performing the cross-audit.
> **Project:** REQUIRED — needed for context refresh.
> **Brief:** REQUIRED — `@[filepath]` auto-resolves to absolute path.

## Execution

### Step 1: Context Refresh (MANDATORY)

Refresh the voice's context to prevent drift and hallucination.

// turbo
Execute command: `powershell -ExecutionPolicy Bypass -File "C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook\scripts\refresh_global.ps1" -Voice "<VOICE>" -Project "<PROJECT>"`

> Replace `<VOICE>` and `<PROJECT>` with values from the user prompt.

### Step 2: Read the Operational Loop Cross-Audit protocol

// turbo
Read the cross-audit format from `OPERATIONAL_LOOP.md` Phase 1C.

### Step 3: Read the full brief

// turbo
Read the **entire** brief file — all original reviews AND any prior cross-audits.
Do NOT skim or summarize. The whole point is to audit with full context.

> **CRITICAL:** If the brief is too long for your context, read it in sections. Do NOT skip any voice's review or cross-audit.

### Step 4: Opus Branch Detection (OPUS ONLY)

**If you are Opus:** After reading the brief, scan for `## [Voice] Cross-Audit` headers from OTHER voices (not your own prior cross-audit).

- **If NO other voice cross-audits exist:** You are the first cross-auditor. Continue to Step 5 (perform cross-audit).
- **If other voice cross-audits ARE present:** Cross-auditing is complete. **Skip Steps 5-7 entirely.** Instead, proceed directly to **Phase 1D Synthesis** — present agreements, conflicts, and key decisions to the Commander for resolution. Use the Synthesis format from `OPERATIONAL_LOOP.md` Phase 1D.

**If you are NOT Opus:** Ignore this step. Continue to Step 5.

### Step 5: Perform cross-audit

**Rules:**

- **Voice-agnostic:** You may audit ANY voice's recommendations, regardless of your specialty.
- **No role gatekeeping.** If you see a problem in any voice's analysis — flag it.
- **Read prior cross-audits.** If Opus or other voices have already cross-audited, read their observations. Build on them, disagree with them, or endorse them.
- **Be substantive.** Don't repeat what others said. Add new observations.

**Answer these three questions:**

| #   | Question                                              | Required |
| --- | ----------------------------------------------------- | -------- |
| 1   | Do other voices' directives conflict with each other? | YES      |
| 2   | Did I spot gaps or tensions in their recommendations? | YES      |
| 3   | What specific guidance do I add for the executor?     | YES      |

### Step 6: Append cross-audit to the brief

Append at the **end** of the document (chronological order). Use this format:

```markdown
---

## [Voice] Cross-Audit

> **Auditing:** [List of voices whose reviews you examined]

### Observations

[Conflicts, gaps, tensions, or endorsements. Be specific — cite line numbers or quote directives.]

### Directive for [Executor]

> [!IMPORTANT]
> [Specific implementation guidance]

---

_[Voice] ([Role]) | [Phase] Cross-Audit | [Date]_
```

### Step 7: Report completion

State to Commander: "Cross-audit complete. [N] observations appended to brief."

## Orchestration (Commander Reference)

Per OPERATIONAL_LOOP v6.0:

```
1. Opus cross-audits FIRST (sets the tone)
2. Commander distributes brief to other voices
3. Each voice reads ALL prior content + cross-audits
4. Commander invokes /cross-audit with Opus again → auto-detects and proceeds to 1D Synthesis
```

> **Opus is always first, then order is flexible.** Commander decides voice sequence based on availability.
