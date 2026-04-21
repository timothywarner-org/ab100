# Contributing

Thanks for helping improve the **Agentic AI Business Solutions Architect** course and AB-100 study materials.

## Scope

This repository is the instructor source of truth and learner reference for Tim Warner's O'Reilly Live Learning course. Contributions should support one of:

- Course delivery — demos, exercises, teaching notes in [`src/hour1-plan/`](src/hour1-plan/) through [`src/hour4-security/`](src/hour4-security/)
- Study reference — [`docs/course-plan.md`](docs/course-plan.md) and [`docs/exam-objectives.md`](docs/exam-objectives.md)
- Repo hygiene — README, CLAUDE.md, contribution docs, tooling config

## How to contribute

1. **Open an issue first** for anything more than a typo fix or broken link. Describe the learner or instructor impact.
2. **Branch from `main`** with a short, descriptive name (e.g., `hour2-demo-update`).
3. **Keep PRs small and focused.** One concern per PR.
4. **Cite your sources.** When you add exam-objective content, link to the current Microsoft Learn documentation or the [official AB-100 exam page](https://learn.microsoft.com/credentials/certifications/exams/ab-100/).

## Content standards

- **Markdown lint** — files must pass [`.markdownlint.json`](.markdownlint.json) rules.
- **Microsoft product names** — exact casing: *Microsoft 365 Copilot*, *Copilot Studio*, *Azure AI Foundry*, *Azure OpenAI*, *Dynamics 365*.
- **Protocols** — **MCP** (Model Context Protocol) and **A2A** (Agent2Agent).
- **Disclaimer** — this is an unofficial study guide. Never imply Microsoft endorsement.
- **Cross-links** — when you move or rename a file, grep for the old path across `*.md` and update references.

## Review process

- The maintainer reviews PRs in priority order: course-delivery blockers first, then exam-content updates, then hygiene.
- Expect review feedback within five business days during course-delivery windows, longer otherwise.

## Questions

Open an issue or contact **Tim Warner** at **tim@techtrainertim.com**.
