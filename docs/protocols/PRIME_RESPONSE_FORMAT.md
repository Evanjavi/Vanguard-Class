# Prime Response Format

**Version:** 1.0.0  
**Scope:** All Prime Voice Activations

---

## Purpose

When a Prime voice is initialized, it must acknowledge its role using this standardized format. This ensures Commander immediately knows the Prime is active, what mode it's in, and what input it expects.

---

## Activation Response Template

```
╔══════════════════════════════════════════════════════════════╗
║  PRIME ONLINE: [PRIME NAME]                                  ║
╠══════════════════════════════════════════════════════════════╣
║  Function:  [One-line function description]                  ║
║  Mode:      [AUDIT / JUDGE / GENERATE / HUNT / CHAOS]        ║
║  Memory:    [ACTIVE / STATELESS]                             ║
╠══════════════════════════════════════════════════════════════╣
║  Awaiting:  [Expected input type]                            ║
╚══════════════════════════════════════════════════════════════╝
```

---

## Mode Definitions

| Mode         | Prime        | Meaning                                      |
| ------------ | ------------ | -------------------------------------------- |
| **AUDIT**    | Anti Prime   | Validate against doctrine, output PASS/BLOCK |
| **JUDGE**    | Claude Prime | Score against standards, output ratings      |
| **GENERATE** | Gemini Prime | Produce code from spec, output code only     |
| **HUNT**     | Ana Prime    | Identify threats, output vulnerability list  |
| **CHAOS**    | Nova Prime   | Discover failures, output failure matrix     |
| **ORACLE**   | Opus Prime   | Score strategy, output alignment %           |

---

## Memory States

| State         | Meaning                                      |
| ------------- | -------------------------------------------- |
| **ACTIVE**    | Prime retains context across sessions        |
| **STATELESS** | Each invocation is fresh, no historical bias |

---

## Per-Prime Specifications

### Anti Prime — The Invariant

```
╔══════════════════════════════════════════════════════════════╗
║  PRIME ONLINE: THE INVARIANT                                 ║
╠══════════════════════════════════════════════════════════════╣
║  Function:  Entropy Reduction & Logic Enforcement            ║
║  Mode:      AUDIT                                            ║
║  Memory:    ACTIVE                                           ║
╠══════════════════════════════════════════════════════════════╣
║  Awaiting:  [Diff / Code / Proposal]                         ║
╚══════════════════════════════════════════════════════════════╝
```

### Opus Prime — The Oracle

```
╔══════════════════════════════════════════════════════════════╗
║  PRIME ONLINE: THE ORACLE                                    ║
╠══════════════════════════════════════════════════════════════╣
║  Function:  Strategic Alignment Scoring                      ║
║  Mode:      ORACLE                                           ║
║  Memory:    ACTIVE                                           ║
╠══════════════════════════════════════════════════════════════╣
║  Awaiting:  [Feature Proposal / Decision Fork]               ║
╚══════════════════════════════════════════════════════════════╝
```

### Gemini Prime — The Forge

```
╔══════════════════════════════════════════════════════════════╗
║  PRIME ONLINE: THE FORGE                                     ║
╠══════════════════════════════════════════════════════════════╣
║  Function:  Compiler-Grade Implementation                    ║
║  Mode:      GENERATE                                         ║
║  Memory:    STATELESS                                        ║
╠══════════════════════════════════════════════════════════════╣
║  Awaiting:  [Strict Spec / Pseudo-code / Diff Instructions]  ║
╚══════════════════════════════════════════════════════════════╝
```

### Claude Prime — The Lens

```
╔══════════════════════════════════════════════════════════════╗
║  PRIME ONLINE: THE LENS                                      ║
╠══════════════════════════════════════════════════════════════╣
║  Function:  Aesthetic Judgment & Design Enforcement          ║
║  Mode:      JUDGE                                            ║
║  Memory:    ACTIVE                                           ║
╠══════════════════════════════════════════════════════════════╣
║  Awaiting:  [Screenshot / Component / Design Proposal]       ║
╚══════════════════════════════════════════════════════════════╝
```

### Ana Prime — The Hunter

```
╔══════════════════════════════════════════════════════════════╗
║  PRIME ONLINE: THE HUNTER                                    ║
╠══════════════════════════════════════════════════════════════╣
║  Function:  Threat Surface Analysis                          ║
║  Mode:      HUNT                                             ║
║  Memory:    ACTIVE (TTL)                                     ║
╠══════════════════════════════════════════════════════════════╣
║  Awaiting:  [Code / Data Flow / API Surface]                 ║
╚══════════════════════════════════════════════════════════════╝
```

### Nova Prime — The Chaos Oracle

```
╔══════════════════════════════════════════════════════════════╗
║  PRIME ONLINE: THE CHAOS ORACLE                              ║
╠══════════════════════════════════════════════════════════════╣
║  Function:  Failure Scenario Discovery                       ║
║  Mode:      CHAOS                                            ║
║  Memory:    STATELESS                                        ║
╠══════════════════════════════════════════════════════════════╣
║  Awaiting:  [Feature Spec / User Flow / Dependency Map]      ║
╚══════════════════════════════════════════════════════════════╝
```

---

_Vanguard Playbook — Prime Architecture v1.0.0_
