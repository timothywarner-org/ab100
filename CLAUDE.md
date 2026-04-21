# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

O'Reilly Live Learning course repo for **Agentic AI Business Solutions Architect** — a 4-hour instructor-led course aligned to Microsoft's **AB-100** certification exam. This is Tim Warner's instructor source of truth and learner reference material.

The repo is **currently scaffolding only** — directory structure, cross-links, and placeholders. No teaching content has been written yet. When the user asks for course content, write into the existing scaffold rather than creating new top-level folders.

## Course structure (4 hours)

| Hour | Theme                    | AB-100 Domain                                  |
| ---- | ------------------------ | ---------------------------------------------- |
| 1    | Plan AI Solutions        | Plan AI-powered business solutions (25–30%)    |
| 2    | Design AI Solutions      | Design AI-powered business solutions (25–30%)  |
| 3    | Deploy AI Solutions      | Deploy — implementation & operations (~20–25%) |
| 4    | Security & Exam Mastery  | Deploy — security & governance (~20–25%)       |

The canonical plan lives in [`docs/course-plan.md`](docs/course-plan.md). Exam objective mapping is in [`docs/exam-objectives.md`](docs/exam-objectives.md).

## Layout

```text
ab100/
├── docs/                     # Course plan + exam objectives
├── images/                   # Cover and diagrams (resized for README display)
├── scripts/                  # Setup helpers (if needed)
└── src/                      # Per-hour teaching materials
    ├── hour1-plan/           # AB-100 Domain 1
    ├── hour2-design/         # AB-100 Domain 2
    ├── hour3-deploy/         # AB-100 Domain 3 (implementation)
    └── hour4-security/       # AB-100 Domain 3 (security/governance) + exam prep
```

**There is no build system, no tests, no application code.** The deliverable is Markdown content. Do not add `package.json`, linters beyond `.markdownlint.json`, or CI unless the user explicitly asks.

## Authoring conventions

- **Microsoft product names** — exact casing: *Microsoft 365 Copilot*, *Copilot Studio*, *Azure AI Foundry*, *Azure OpenAI*, *Dynamics 365*. Protocols: **MCP** (Model Context Protocol), **A2A** (Agent2Agent).
- **Hour folders** — `hourN-theme/` (1-indexed). Each has a `README.md` with learning objectives, teaching flow, demo, exercise, and resources sections.
- **Markdown lint** — `.markdownlint.json` enforces line length 120, 2-space list indent, siblings-only MD024. Run `npx markdownlint-cli2 "**/*.md"` to validate.
- **Cross-links** — when moving or renaming files, grep `*.md` for the old path before committing. The README tree diagram, `docs/course-plan.md` schedule table, and each hour's `Resources` section all cross-reference each other.
- **Disclaimer** — unofficial study guide. Never imply Microsoft endorsement. Link to <https://learn.microsoft.com/credentials/certifications/exams/ab-100/> as the authoritative source for exam info.

## When filling in scaffolding

Each hour's `README.md` has bracketed italic placeholders (`_Objective 1_`, `_Hook, context, agenda_`, etc.). When the user asks to populate an hour, replace the placeholders in-place — don't create parallel files. Keep the section structure (Learning objectives → Teaching flow → Demo → Exercise → Resources) unless the user explicitly changes it.

`docs/course-plan.md` and `docs/exam-objectives.md` are the canonical specs. If an hour's content conflicts with them, the docs win, or update both.
