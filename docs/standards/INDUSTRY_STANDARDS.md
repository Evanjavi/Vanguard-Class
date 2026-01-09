# Industry Standards & Best Practices

# Vanguard Class Reference

**Version:** 2.0.0
**Owner:** The Chorus
**Review Cycle:** Quarterly
**Purpose:** Guide for adopting professional development practices across all Vanguard projects.

---

## 🎯 Core Engineering Principles

### 1. Architecture

| Standard                   | Requirement                                 | Rationale                                   |
| -------------------------- | ------------------------------------------- | ------------------------------------------- |
| **Component Architecture** | Atomic Design (Atoms, Molecules, Organisms) | Reusability and testability                 |
| **State Management**       | Context API (Global) + Local State          | Avoid prop drilling; keep logic close to UI |
| **Separation of Concerns** | Logic in Hooks, UI in Components            | Testability and clean rendering             |
| **Project Structure**      | `src/{components,hooks,utils,db,assets}`    | Standardized navigation for any agent       |

### 2. Modern Web Stack (The Vanguard Stack)

| Tool                | Standard                                                 |
| ------------------- | -------------------------------------------------------- |
| **Build**           | Vite (Fast HMR, ESBuild)                                 |
| **Framework**       | React 18+ (Functional Components only)                   |
| **Persistence**     | Dexie.js (IndexedDB wrapper) for local-first             |
| **Styling**         | CSS Variables (Design Tokens) or Tailwind (if requested) |
| **Package Manager** | npm (Standard node environment)                          |

---

## ✅ Code Quality Standards

### 1. The "Clean Code" Rules

- **Functions:** Do one thing well. Max 20-30 lines typical.
- **Variables:** `camelCase`. Boolean? Prefix with `is`, `has`, `should`.
- **Comments:** Explain _WHY_, not _WHAT_. Code explains _WHAT_.
- **No Magic Numbers:** Use constants (e.g., `const MAX_RETRIES = 3`).

### 2. Hooks & Components

- **Hooks:** Prefix with `use`. Logic only. Return data/functions.
- **Components:** PascalCase. One component per file.
- **Props:** Destructure props in signature.
- **No Console Logs:** Production builds must be clean.

### 3. Security Essentials

| Practice         | Standard                                            |
| ---------------- | --------------------------------------------------- |
| **Secrets**      | `.env` files ONLY. Never commit keys.               |
| **Auth**         | Firebase Auth or Platform Native. No custom auth.   |
| **Validation**   | Zod or manual validation at ALL input boundaries.   |
| **Sanitization** | Never use `dangerouslySetInnerHTML` without review. |

---

## 🚀 Workflow Standards

### 1. Branch Strategy (Git Flow)

```
main (production-ready stable)
  └── develop (integration)
       └── feature/xyz (active work)
```

- **Rule:** Never commit directly to `main`.
- **Atomic Commits:** "fix: auth logic" (Good) vs "updates" (Bad).

### 2. Section 11 Compliance (Agentic Flow)

- **Handoffs:** Must include Context, Goal, DO, DO NOT, Output, Stop Condition.
- **Dual Document Protocol:** Read `task.md` + `implementation_plan.md` before coding.

---

## 🛡️ Security & Resilience (Ana's Gate)

| Level         | Requirement                                         |
| ------------- | --------------------------------------------------- |
| **L1: Basic** | `.gitignore` config, HTTPS only, No secrets in code |
| **L2: Data**  | Export/Import capability (Data Sovereignty)         |
| **L3: Input** | Comprehensive input validation (Client + Server)    |
| **L4: Audit** | `npm audit` monthly, dependency updates             |

---

## 📋 New Project Checklist

- [ ] **Scaffold**: `npm create vite@latest`
- [ ] **Cleanup**: Remove default assets/CSS
- [ ] **Standards**: Copy `PROJECT_DNA.md` template
- [ ] **Git**: `git init`, `.gitignore`, `git branch -M main`
- [ ] **Deps**: Install `dexie`, `react-router-dom`, `uuid`
- [ ] **Docs**: Create `WBS.md`, `task.md`, `THE_BOOK.md`

---

_Vanguard Class — Standards_
