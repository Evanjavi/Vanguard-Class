---
description: Refresh global context using the Vanguard Playbook protocol. Automatically loads Vanguard context and optional Project context.
---

# Vanguard Refresh Protocol

This workflow executes the centralized `refresh_global.ps1` script from the Vanguard Playbook.

## Usage

- **CRITICAL:** The Agent MUST check the user's prompt for **Voice** (e.g. "as Opus") and **Project** (e.g. "for CevicheBar").
- **Mandatory:** The `-Voice` parameter is REQUIRED. Do not run without it.
- **Example:** `powershell ... -Voice "Opus" -Project "CevicheBar"`

## Execution

1. Run Vanguard Refresh Script (Dynamic)
   // turbo
2. Execute command: powershell -ExecutionPolicy Bypass -File "C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook\scripts\refresh_global.ps1" -Voice "<VOICE>" -Project "<PROJECT>"
   > **Note to Agent:** Replace `<VOICE>` and `<PROJECT>` with values from the user prompt. If Project is unspecified, omit `-Project`. If Voice is unspecified, ASK THE USER.
