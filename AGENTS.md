# AGENTS.md

This file gives Codex and other coding agents repository-specific guidance.

## Repository Purpose

This is Tim Warner's teaching and learning repository for **AB-100: Agentic AI Business Solutions Architect**.
It supports an O'Reilly Live Learning event scheduled for **April 30, 2026** and serves two audiences:

- **Learners** preparing for Microsoft exam AB-100.
- **Instructor delivery** for a 4-hour O'Reilly Live Events class.

The repo has three major work areas:

- `docs/` -- canonical instructional, exam, policy, resource, and slide-deck material.
- `.github/` and `.vscode/` -- AB-100 Cert Buddy Copilot agent, skills, prompts, and Microsoft Learn MCP config.
- `src/` -- classroom POC app and deployment assets for Hour 3.

## Source Of Truth

Use this precedence when facts conflict:

1. `docs/ab100-exam-objectives.md` -- canonical AB-100 skills measured.
2. `docs/microsoft-certification-policies.md` and `docs/pearson-vue-registration.md` -- exam policy, registration, and support facts.
3. `src/README.md` -- canonical POC app architecture, setup, verification, and teardown flow.
4. `docs/course-plan-april-2026.md` -- canonical 4-hour live course pacing.
5. Hour-specific materials and learning-path mirrors.

When editing AB-100 factual content, ground against Microsoft Learn before changing exam objectives,
product behavior, licensing, or certification policy. If the fact cannot be verified, say so or omit it.

## Course Structure

Microsoft publishes three AB-100 domains:

- Plan AI-powered business solutions: 25-30%.
- Design AI-powered business solutions: 25-30%.
- Deploy AI-powered business solutions: 40-45%.

This course deliberately splits the Deploy domain across two hours:

- Hour 1: Plan AI Solutions.
- Hour 2: Design AI Solutions.
- Hour 3: Deploy AI Solutions -- implementation, monitoring, ALM, and operations.
- Hour 4: Security & Exam Mastery -- security, governance, Responsible AI, and exam readiness.

Do not "correct" the course to a three-hour or three-module split.

## POC App

The classroom POC lives under `src/` and demonstrates:

- A Python MCP server wrapping a Microsoft Foundry agent.
- Azure Container Apps for runtime hosting.
- Azure API Management as the public gateway.
- User-assigned managed identity for outbound Foundry authentication.
- Bicep infrastructure and Bash scripts for repeatable classroom deployment.

Important files:

- `src/README.md` -- POC runbook and teaching notes.
- `src/app/main.py` -- Python MCP server.
- `src/app/Dockerfile` -- container image.
- `src/infra/main.bicep` and `src/infra/modules/*.bicep` -- Azure infrastructure.
- `src/policies/apim-inbound.xml` -- APIM policy.
- `src/scripts/*.sh` -- five-command demo and teardown.

Do not commit real values from `src/.env`. Use `src/.env.example` for documented settings.

## Slide Deck Build

The course deck is generated from HTML source:

- Source slides: `docs/deck-build/slides/*.html`.
- Build script: `docs/deck-build/build.js`.
- Build command: run from `docs/deck-build` with `node build.js`.
- Build output: `docs/ab100-course-deck.pptx`.
- Canonical dated artifact: `docs/ab100-course-deck-april-2026.pptx`.

After rebuilding, copy the undated build output over the dated file.

Renderer constraints:

- Every text node must be inside `<p>`, `<h1>`-`<h6>`, `<ul>`, or `<ol>`.
- Do not leave bare text inside `<div>` or `<span>`.
- When inserting slides, use letter suffixes such as `05a-topic.html`; do not renumber existing slides.
- Add new slide filenames to the `slides` array in `build.js`; filename order alone is not enough.

## Writing Conventions

- Plain ASCII only: use `--`, not en dash or em dash; use straight quotes.
- Avoid contractions: write "do not", "cannot", "will not".
- Microsoft product names must use current branding:
  - Microsoft 365 Copilot
  - Microsoft Copilot Studio
  - Microsoft Foundry
  - Microsoft Foundry Tools
  - Microsoft Entra ID
  - Dynamics 365
- Protocol names:
  - MCP means Model Context Protocol.
  - A2A means Agent2Agent.
- Avoid legacy names unless explaining a rename. Replace legacy terms silently in new content.

## Instructional Content Standards

When editing course or learner-facing material:

- Keep the instructor voice direct, practical, and exam-aligned.
- Preserve section structures unless the user explicitly asks for a restructure.
- Tie concepts back to AB-100 objectives and real Microsoft platform decisions.
- Favor decision frameworks, tradeoffs, and architectural patterns over generic definitions.
- Use realistic Microsoft services and features; do not invent product names, node types, policies, or capabilities.
- Include cleanup steps for any hands-on lab that creates cloud resources.

## Cert Buddy Standards

The AB-100 Cert Buddy lives in `.github/`:

- Agent: `.github/agents/ab100-cert-buddy-agent.agent.md`.
- Skills: `.github/skills/*/SKILL.md`.
- Prompts: `.github/prompts/*.prompt.md`.
- MCP config: `.vscode/mcp.json`.

Copilot skills are auto-discovered from `.github/skills/`; do not add a `skills:` frontmatter field to the agent.

Practice questions:

- Use exam-realistic scenarios.
- Randomize correct answer positions across A/B/C/D.
- Make distractors plausible and based on real Microsoft capabilities.
- Give exactly 2 rationale sentences per choice when the question format requires rationales.

Labs:

- Target 15-25 minutes unless otherwise requested.
- Include validation gates.
- Include cleanup.
- Call out cost or licensing implications.

## Validation

Useful checks:

```powershell
npx markdownlint-cli2 "**/*.md"
```

```powershell
rg -n "[\u2018\u2019\u201C\u201D\u2013\u2014]" .
```

```powershell
$c = @('don' + "'t", 'doesn' + "'t", 'won' + "'t", 'can' + "'t", 'it' + "'s", 'that' + "'s") -join '|'; rg -ni "\b($c)\b" .
```

POC validation depends on Azure credentials and existing Foundry resources. Do not run deployment scripts unless the user asks for deployment or validation against Azure.

## Agent Operating Rules

- Prefer modifying existing files over creating parallel copies.
- Preserve user edits in the working tree.
- Do not delete or rewrite instructor content unless explicitly requested.
- For current Microsoft product, certification, policy, pricing, or licensing facts, verify against current official sources.
- Be explicit with dates. "Tomorrow" relative to this initialization means **April 30, 2026**.
- If a requested change affects live delivery readiness, prioritize clarity, reliability, and easy stage execution over abstraction.
