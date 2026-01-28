---
description: Scaffold a new project with Vanguard structure
---
# New Project Workflow

## Steps

// turbo
1. Run scaffold script:
   `powershell -ExecutionPolicy Bypass -File scripts\new-project.ps1 -Name \"[PROJECT_NAME]\" -Path \"[PARENT_PATH]\"`

2. Navigate to project:
   `cd [PROJECT_PATH]`

3. Update PROJECT_DNA.md:
   - Set tech stack
   - Define purpose
   - Set initial goals

4. Copy Chorus protocols (optional):
   - Copy from `VanguardPlaybook\docs\protocols\` to `[PROJECT]\Chorus Documents\`

5. Initialize GitHub (if needed):
   `git remote add origin [REPO_URL] && git push -u origin main`

6. Start first sprint:
   - Update WBS.md with initial tasks
   - Begin development

---

*Scaffold once, build forever.*
