---
description: Refresh global context using the Vanguard Playbook protocol. Automatically loads Vanguard context and optional Project context.
---

# Vanguard Refresh Protocol

This workflow executes the centralized `refresh_global.ps1` script from the Vanguard Playbook.

## Usage

- **Default:** Loads Vanguard Central Command context only.
- **Context Aware:** The agent must check the user's prompt for Project (e.g. "for CevicheBar") or Voice (e.g. "as Opus") and append `-Project "Name"` or `-Voice "Name"` to the command.

## Execution

1. Run Vanguard Refresh Script
   // turbo
2. Execute command: powershell -ExecutionPolicy Bypass -File "C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook\scripts\refresh_global.ps1"
