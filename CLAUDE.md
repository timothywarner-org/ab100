# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

This repo has two complementary missions:

1. **Live training scaffolding** — companion material for Tim Warner's O'Reilly Live Learning course **Agentic AI Business Solutions Architect** (4 hours). Hour-by-hour content lives under `src/hour1-plan/` through `src/hour4-security/` and the authoritative plan is `docs/course-plan.md`.
2. **AB-100 Cert Buddy** — a GitHub Copilot agent that generates practice questions, hands-on labs, and personalized study plans for Microsoft exam **AB-100: Agentic AI Business Solutions Architect**. The agent, skills, prompts, and MCP server live under `.github/` and `.vscode/`.

This is Tim Warner's instructor source of truth and learner reference material. There is no application code, no build system, no tests.

## Course structure (4 hours)

| Hour | Theme                    | AB-100 Domain                                  |
| ---- | ------------------------ | ---------------------------------------------- |
| 1    | Plan AI Solutions        | Plan AI-powered business solutions (25–30%)    |
| 2    | Design AI Solutions      | Design AI-powered business solutions (25–30%)  |
| 3    | Deploy AI Solutions      | Deploy — implementation & operations (~20–25%) |
| 4    | Security & Exam Mastery  | Deploy — security & governance (~20–25%)       |

## Cert Buddy architecture

The **ab100-cert-buddy-agent** (`.github/agents/`) orchestrates three auto-discovered skills (`.github/skills/`):

- **ab100-item-creator** — Exam-realistic practice questions with two-phase interactive delivery (question first, rationale after user answers). Supports "hint" and "skip" commands.
- **ab100-lab-creator** — 15–25 minute self-validating labs across four categories: `agent-authoring`, `design-walkthrough`, `alm`, `responsible-ai-governance`. Validation gates after each step; mandatory cleanup.
- **ab100-study-planner** — Personalized study plans based on confidence self-assessment across the three AB-100 domains. Optionally drills into 10 subdomains for finer targeting.

Three prompt templates (`.github/prompts/`) provide slash-command entry points: `/ab100-practice-question`, `/ab100-practice-lab`, `/ab100-study-planner`.

All content is grounded via a single MCP server: **ab100buddy-mslearn** (`https://learn.microsoft.com/api/mcp`, free, no API key) providing `microsoft_docs_search`, `microsoft_docs_fetch`, and `microsoft_code_sample_search`.

### Skill discovery (critical gotcha)

GitHub Copilot **does not** support a `skills:` field in agent YAML frontmatter. Skills are auto-discovered from `.github/skills/` folders based on `name` and `description` in `SKILL.md` frontmatter. The agent references skills by name in its Markdown body only.

### Cross-reference dependencies

When renaming anything, update all dependents:

- Agent `name` field → all `.github/prompts/*.prompt.md` `agent:` fields.
- Skill `name` field → agent Markdown body references.
- MCP server ID in `.vscode/mcp.json` → agent and prompt `tools:` lists.

## Layout

```text
ab100/
├── .github/
│   ├── agents/ab100-cert-buddy-agent.agent.md
│   ├── skills/{ab100-item-creator,ab100-lab-creator,ab100-study-planner}/SKILL.md
│   ├── prompts/ab100-*.prompt.md
│   ├── copilot-instructions.md
│   └── workflows/{validate.yml,mlc-config.json}
├── .vscode/{mcp.json,extensions.json}
├── docs/course-plan.md                  # Course plan (4-hour live training)
├── references/
│   ├── ab100-objectives.md              # Synced from Microsoft Learn study guide
│   ├── fictional-companies.md           # 50+ Microsoft fictional companies
│   └── style-guide.md                   # Microsoft Writing Style Guide key rules
├── images/cover.png                     # Resized for README display
├── src/
│   ├── hour1-plan/README.md
│   ├── hour2-design/README.md
│   ├── hour3-deploy/README.md
│   └── hour4-security/README.md
└── scripts/.gitkeep
```

## Authoring conventions

- **Microsoft product names** — exact casing: *Microsoft 365 Copilot*, *Microsoft Copilot Studio*, *Microsoft Foundry*, *Microsoft Foundry Tools*, *Dynamics 365*, *Microsoft Entra ID*. Protocols: **MCP** (Model Context Protocol), **A2A** (Agent2Agent).
- **Terminology** — the rename table in `.github/copilot-instructions.md` is authoritative. Legacy names ("Azure AI Studio", "Power Virtual Agents", "Azure AD") must be silently replaced with current names even when the user types them.
- **Plain ASCII only** — no curly quotes, no en/em dashes. Use `--` instead.
- **No contractions** — write "do not" not "don't".
- **Hour folders** — `hourN-theme/` (1-indexed). Each has a `README.md` with Learning objectives → Teaching flow → Demo → Exercise → Resources sections.
- **Markdown lint** — `.markdownlint.json` enforces line length 120, 2-space list indent, siblings-only MD024. Run `npx markdownlint-cli2 "**/*.md"` to validate.
- **Answer randomization** — correct answer position must be distributed across A/B/C/D, never always the same letter.
- **Fictional company randomization** — draw from the full 50+ list in `references/fictional-companies.md`, not always Contoso.
- **Rationale depth** — exactly 2 sentences per choice (why correct/incorrect + context).
- **Distractors must be real** — reference actual Microsoft services, agent types, Foundry tools, Copilot Studio node kinds. Never invent fake ones.
- **Labs must include cleanup** — every lab ends with resource/solution/environment deletion steps.
- **Negatives** — avoid; if required, **CAP** + **bold** the negative word.

## CI validation

`.github/workflows/validate.yml` runs on PR to `main` (non-blocking, `continue-on-error: true`):

1. **Retired terminology check** — greps for `Azure AD`, `Power Virtual Agents`, `Azure AI Studio`, `Dataverse for Teams`, `Copilot for Microsoft 365`, etc. (excludes `copilot-instructions.md` and `CLAUDE.md` which contain the rename table).
2. **Non-ASCII check** — greps for curly quotes, en dashes, em dashes.
3. **Contraction check** — greps for `don't`, `doesn't`, `won't`, etc. (excludes `contributing.md` / `CONTRIBUTING.md`).
4. **Markdown link check** — validates URLs using `mlc-config.json` (10s timeout, retries on 429).

## Default behaviors

Preserve these when editing agent or skill content:

- Labs default to **Copilot Studio YAML** for authoring, **Power Platform CLI** for ALM, and **Microsoft Foundry Portal** for Foundry-specific work.
- Agent picks a domain from `references/ab100-objectives.md` (weighted by exam percentage) when none is specified.
- Labs prefer lowest-cost resources; include a cost warning when premium capacity, Foundry model charges, or non-trial Dynamics 365 apps are required.
- Questions use two-phase delivery: Phase 1 (question only, wait for answer), Phase 2 (evaluation with rationale and references).

## When filling in scaffolding

Each hour's `README.md` has bracketed italic placeholders (`_Objective 1_`, `_Hook, context, agenda_`, etc.). When the user asks to populate an hour, replace the placeholders in-place — don't create parallel files. Keep the section structure (Learning objectives → Teaching flow → Demo → Exercise → Resources) unless the user explicitly changes it.

`docs/course-plan.md` and `references/ab100-objectives.md` are the canonical specs. If an hour's content conflicts with them, the docs win — or update both.
