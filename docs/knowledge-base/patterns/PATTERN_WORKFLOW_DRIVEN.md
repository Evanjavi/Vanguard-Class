# Pattern: Workflow-Driven Operations

**Category:** workflow

---

## Context
Repetitive multi-step tasks are error-prone when done manually.

## Solution
Encode common operations as workflow files:
- Markdown format in `.agent/workflows/`
- Clear step-by-step instructions
- `// turbo` annotation for safe auto-run

## Benefits
- Consistency across sessions
- Onboarding is self-service
- Commands are auditable

## Example
`/refresh-context`, `/verify-build`, `/security-scan` workflows in FlorSys.

---

*Vanguard Pattern Library*
