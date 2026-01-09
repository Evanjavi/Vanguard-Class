---
description: Manually refresh the context for a specific project using Central Command protocols.
---

# Refresh Context Workflow

This workflow reloads the "Central Command" context (Vanguard Class DNA) and then layers on the specific project context (DNA, Task, WBS).

## Usage

Run this workflow to switch your active mental context between projects.

## Steps

1. **Identify the Target Project**

   - Confirm which project you are switching to: `FlorSystem` or `CevicheBar`.
   - If no project is specified, defaults to just `Central Command` (Vanguard).

2. **Execute Global Refresh Script**

   - Run the PowerShell script that concatenates the L0 (Core) and L1-L3 (Project) context files.

   ```powershell
   # Example: Switch to FlorSystem
   C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook\scripts\refresh_global.ps1 -Project "FlorSystem"
   ```

   ```powershell
   # Example: Switch to CevicheBar
   C:\Users\evanj\OneDrive\Desktop\VanguardPlaybook\scripts\refresh_global.ps1 -Project "CevicheBar"
   ```

3. **Acknowledge Role**
   - Read the loaded `CHORUS_DNA.md`.
   - Re-affirm your identity as **Gemini (Anchor)** unless instructed otherwise.
   - State: "Context loaded. Ready for [Project] operations."
