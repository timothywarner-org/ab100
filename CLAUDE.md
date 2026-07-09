# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository purpose

This repo has three complementary missions:

1. **Live training scaffolding** -- companion material for Tim Warner's O'Reilly Live Learning course **Agentic AI Business Solutions Architect** (4 hours, delivered April 2026). The authoritative plan is `docs/course-plan-april-2026.md`.
2. **AB-100 Cert Buddy** -- a GitHub Copilot agent that generates practice questions, hands-on labs, and personalized study plans for Microsoft exam **AB-100: Agentic AI Business Solutions Architect**. The agent, skills, prompts, and MCP server live under `.github/` and `.vscode/`.
3. **Hour 3 Deploy POC stack** -- a working Foundry agent + MCP + ACA + APIM proof of concept under `src/`. Five bash scripts spin up the gateway-fronted MCP server that wraps an existing Foundry agent; one script tears it down. Used as the live demo for Hour 3 (Deploy) and as the structural base for the Hour 4 (Security) bridge.

This is Tim Warner's instructor source of truth and learner reference material. There is one minimal Python app (the MCP server in `src/app/`) and one Bicep stack; no test suite. Build pipelines: the slide deck (see "Slide deck build" below) and the POC deploy scripts (see "POC stack" below).

## Slide deck build

The course slide deck is generated from HTML source files via Node, not authored in PowerPoint:

- Source: `docs/deck-build/slides/*.html` -- one HTML file per slide, ordered by filename. Slides use Tim's brand palette (`#1F2A56` navy, `#00B4D8` cyan, `#F4845F` orange) and a fixed `720pt x 405pt` 16:9 layout. Existing CSS classes (`.header`, `.tag`, `.box`, `.card`, `.foot`) define the look -- match them when adding slides.
- Build: `cd docs/deck-build && node build.js`. Reads the `slides` array in `build.js` (slides are added to the deck in array order, NOT filename order) and writes `docs/ab100-course-deck.pptx`.
- Sync: after every rebuild, also copy `docs/ab100-course-deck.pptx` over `docs/ab100-course-deck-july-2026.pptx`. The dated filename is the canonical artifact referenced from other docs; the undated one is just the build output.
- Renderer constraint: `html2pptx.js` requires every text node be wrapped in `<p>`, `<h1>-<h6>`, `<ul>`, or `<ol>`. Bare text inside `<div>` or `<span>` fails the build with a validation error.
- New slides: when adding a slide between existing ones, name it with a letter suffix (e.g. `05a-seg1-saas-first.html` between `05` and `06`) and add it to the `slides` array in `build.js` at the correct position. Do not renumber existing files.

## Source decks (Microsoft AB-100T00)

`docs/learning-paths/AB-100T00-ENU-PowerPoint-{00..12}.pptx` are Microsoft's official AB-100T00 trainer decks (one per learning-path module, plus 00 intro and 12 wrap). Treat them as RESEARCH INPUT ONLY -- copyright belongs to Microsoft. Extract concepts, decision frameworks, named patterns, and exam-relevant terminology, then synthesize into Tim-voiced material in our deck. Do not copy slide text or layouts. Footer attribution on derived slides reads "Concepts informed by Microsoft AB-100T00 official courseware".

## Course structure (4 hours)

Microsoft publishes **three** AB-100 domains (Plan 25-30%, Design 25-30%, Deploy 40-45%). Tim deliberately splits Deploy into two course hours for pacing -- hour 3 for implementation/operations, hour 4 for security/governance. Both halves cover the same Microsoft "Deploy" domain; do not "fix" this to match Microsoft's split. Canonical domain weights live in `docs/ab100-exam-objectives.md`.

| Hour | Theme                    | AB-100 Domain                                   |
| ---- | ------------------------ | ----------------------------------------------- |
| 1    | Plan AI Solutions        | Plan AI-powered business solutions (25-30%)     |
| 2    | Design AI Solutions      | Design AI-powered business solutions (25-30%)   |
| 3    | Deploy AI Solutions      | Deploy -- implementation & operations (~20-25%) |
| 4    | Security & Exam Mastery  | Deploy -- security & governance (~20-25%)       |

## POC stack (`src/`)

The Hour 3 demo is a working Foundry-agent-as-MCP-server stack on Azure. It is documented in `src/README.md` and consumes an existing Foundry project + agent (the POC does **not** provision Foundry).

Components:

- `src/app/main.py` -- Python MCP server (FastMCP, streamable-HTTP, stateless, JSON responses). Exposes one tool, `ask_agent`, that calls the Foundry agent via the Responses API with `agent_reference` (the agent's own model, instructions, tools, and reasoning effort apply server-side -- do **not** pass `model=` or `instructions=` here, that bypasses the agent and hits the bare deployment).
- `src/app/Dockerfile` -- python:3.12-slim, port 8080, non-root user.
- `src/infra/main.bicep` + `src/infra/modules/{identity,logs,acr,aca,apim}.bicep` -- modular Bicep that creates UAMI, Log Analytics, ACR (Basic), ACA env + Container App (1 replica, public ingress, port 8080), and APIM (Consumption tier).
- `src/policies/apim-inbound.xml` -- APIM inbound policy (subscription key + instance-wide `rate-limit`; **not** `rate-limit-by-key`, which Consumption tier does not support).
- `src/scripts/{00-login,01-build-and-push,02-deploy-infra,03-test,99-teardown}.sh` -- five-command demo plus teardown.

Auth flow: ACA UAMI -> `DefaultAzureCredential` (via `AZURE_CLIENT_ID` env var) -> `Azure AI User` role on the Foundry project -> Responses API.

Consumption-tier APIM constraints worth flagging in Hour 4:
- `rate-limit-by-key` is unavailable -- use plain `rate-limit`.
- The APIM developer portal is unavailable.
- The first-class "MCP server" feature (auto-generated MCP facade) requires Basic v2 / Standard v2 / Premium; this POC runs its own MCP server in ACA instead.

When editing `src/`, do not introduce CI/CD, Key Vault, VNet/private endpoints, autoscale, custom domains, or App Insights -- the README enumerates these as intentional exclusions for the classroom.

## Cert Buddy architecture

The **ab100-cert-buddy-agent** (`.github/agents/`) orchestrates three auto-discovered skills (`.github/skills/`):

- **ab100-item-creator** -- Exam-realistic practice questions with two-phase interactive delivery (question first, rationale after user answers). Supports "hint" and "skip" commands.
- **ab100-lab-creator** -- 15-25 minute self-validating labs across four categories: `agent-authoring`, `design-walkthrough`, `alm`, `responsible-ai-governance`. Validation gates after each step; mandatory cleanup.
- **ab100-study-planner** -- Personalized study plans based on confidence self-assessment across the three AB-100 domains. Optionally drills into 10 subdomains for finer targeting.

Three prompt templates (`.github/prompts/`) provide slash-command entry points: `/ab100-quiz`, `/ab100-lab`, `/ab100-plan`.

All content is grounded via a single MCP server: **ab100buddy-mslearn** (`https://learn.microsoft.com/api/mcp`, free, no API key) providing `microsoft_docs_search`, `microsoft_docs_fetch`, and `microsoft_code_sample_search`.

### Skill discovery (critical gotcha)

GitHub Copilot **does not** support a `skills:` field in agent YAML frontmatter. Skills are auto-discovered from `.github/skills/` folders based on `name` and `description` in `SKILL.md` frontmatter. The agent references skills by name in its Markdown body only.

### Cross-reference dependencies

When renaming anything, update all dependents:

- Agent `name` field -> all `.github/prompts/*.prompt.md` `agent:` fields.
- Skill `name` field -> agent Markdown body references.
- MCP server ID in `.vscode/mcp.json` -> agent and prompt `tools:` lists.

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
├── docs/
│   ├── course-plan-april-2026.md             # Course plan (4-hour live training)
│   ├── ab100-exam-objectives.md              # Verbatim Microsoft Learn skills-measured (canonical)
│   ├── ab100-portals-and-products.md         # Architect-grade index of admin/maker portals (verified 2026-04-29)
│   ├── ab100-metrics-dashboards-reports.md   # Highest-yield dashboards/metrics/reports (verified 2026-04-29)
│   ├── pearson-vue-registration.md           # Registration walkthrough + support escalation
│   ├── microsoft-certification-policies.md   # Candidate Agreement, retake, renewal, FAQs
│   ├── ab100-study-resources.md              # Curated public AB-100 content
│   ├── ab100-poc-architecture.html           # Standalone diagram for the POC stack
│   ├── create-agent-30-days-checklist.pdf    # Handout (post-course follow-on)
│   ├── ab100-course-deck-july-2026.pptx      # Built slide deck (canonical artifact)
│   ├── ab100-course-deck.pptx                # Build output -- copy over the july-2026 file
│   ├── deck-build/                           # HTML slide sources + Node build (build.js, slides/, html2pptx.js)
│   └── learning-paths/architect-agentic-ai/  # Local mirror of MS Learn path (README + 11 module .md files)
├── images/cover.png                     # Resized for README display
├── src/                                 # Hour 3 Deploy POC (Foundry agent + MCP + ACA + APIM)
│   ├── README.md
│   ├── .env.example
│   ├── app/{main.py,Dockerfile,requirements.txt}
│   ├── infra/{main.bicep,main.parameters.json,modules/*.bicep}
│   ├── policies/apim-inbound.xml
│   └── scripts/{00-login,01-build-and-push,02-deploy-infra,03-test,99-teardown}.sh
└── scripts/.gitkeep                     # Repo-level helpers (currently empty)
```

### Source-of-truth hierarchy

When exam facts conflict across files, this is the order of trust:

1. `docs/ab100-exam-objectives.md` (verbatim Microsoft Learn sync, dated).
2. `docs/microsoft-certification-policies.md` and `docs/pearson-vue-registration.md` for policy, registration, and support facts.
3. `docs/course-plan-april-2026.md` and hour READMEs (Tim's instructional framing -- may legitimately differ from Microsoft's split, see note on course structure above).
4. `docs/learning-paths/architect-agentic-ai/` (local mirror of the Microsoft Learn path, treated as curriculum reference -- do NOT use to override exam objectives).

When Microsoft updates the study guide, re-sync `docs/ab100-exam-objectives.md` word for word and record the change in its change log. Other files that quote it must be updated in the same PR.

## Authoring conventions

- **Microsoft product names** -- exact casing: *Microsoft 365 Copilot*, *Microsoft Copilot Studio*, *Microsoft Foundry*, *Microsoft Foundry Tools*, *Dynamics 365*, *Microsoft Entra ID*. Protocols: **MCP** (Model Context Protocol), **A2A** (Agent2Agent).
- **Terminology** -- the rename table in `.github/copilot-instructions.md` is authoritative. Legacy names ("Azure AI Studio", "Power Virtual Agents", "Azure AD") must be silently replaced with current names even when the user types them.
- **Plain ASCII only** -- no curly quotes, no en/em dashes. Use `--` instead. Arrows: write `->` not a unicode arrow.
- **No contractions** -- write "do not" not "don't".
- **Hour content** -- there are no `hourN-theme/` folders any more; per-hour teaching framing lives in `docs/course-plan-april-2026.md` under "Hour N -- ..." sections (Learning objectives -> Teaching flow -> Demo -> Exercise -> Resources). The Hour 3 demo materializes as the `src/` POC stack.
- **Markdown lint** -- `.markdownlint.json` enforces line length 120, 2-space list indent, siblings-only MD024. Run `npx markdownlint-cli2 "**/*.md"` to validate.
- **Answer randomization** -- correct answer position must be distributed across A/B/C/D, never always the same letter.
- **Fictional company randomization** -- draw from the WWL-approved fictional company list embedded directly in `.github/agents/ab100-cert-buddy-agent.agent.md` and the per-skill `SKILL.md` files. Always use the entire company name on every mention (write *Litware, Inc.*, not *Litware*). Do not default to Contoso, Ltd.
- **Rationale depth** -- exactly 2 sentences per choice (why correct/incorrect + context).
- **Distractors must be real** -- reference actual Microsoft services, agent types, Foundry tools, Copilot Studio node kinds. Never invent fake ones.
- **Labs must include cleanup** -- every lab ends with resource/solution/environment deletion steps.
- **Negatives** -- avoid; if required, **CAP** + **bold** the negative word.

## Grounding via MS Learn MCP

When producing or editing AB-100 factual content, ground first via the `ab100buddy-mslearn` MCP server (`https://learn.microsoft.com/api/mcp`, HTTP, no auth). Typical chain:

1. `microsoft_docs_search` for breadth.
2. `microsoft_docs_fetch` on the specific URL for full-page detail.
3. `microsoft_code_sample_search` when Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK, or Bicep accuracy matters.

Never invent a Microsoft Learn URL. If a URL cannot be verified with a tool call, either omit it or put it in a "searched but unverified" appendix. The `/docs` aggregator files were all built with this chain and cite their sources.

## CI validation

`.github/workflows/validate.yml` runs on PR to `main` (non-blocking, `continue-on-error: true`):

1. **Retired terminology check** -- greps for `Azure AD`, `Power Virtual Agents`, `Azure AI Studio`, `Dataverse for Teams`, `Copilot for Microsoft 365`, etc. (excludes `copilot-instructions.md` and `CLAUDE.md` which contain the rename table).
2. **Non-ASCII check** -- greps for curly quotes, en dashes, em dashes.
3. **Contraction check** -- greps for `don't`, `doesn't`, `won't`, etc. (excludes `contributing.md` / `CONTRIBUTING.md`).
4. **Markdown link check** -- validates URLs using `mlc-config.json` (10s timeout, retries on 429).

Self-check before you commit Markdown: `grep -nP '[\x{2018}\x{2019}\x{201C}\x{201D}\x{2013}\x{2014}]' file.md` and `grep -niE "\b(don't|doesn't|won't|can't|it's|that's|we're|you're|I'm|I've|I'll)\b" file.md` should both return nothing (except in the exempt files listed above).

## Default behaviors

Preserve these when editing agent or skill content:

- Labs default to **Copilot Studio YAML** for authoring, **Power Platform CLI** for ALM, and **Microsoft Foundry Portal** for Foundry-specific work.
- Agent picks a domain from `docs/ab100-exam-objectives.md` (canonical, weighted by exam percentage) when none is specified.
- Labs prefer lowest-cost resources; include a cost warning when premium capacity, Foundry model charges, or non-trial Dynamics 365 apps are required.
- Questions use two-phase delivery: Phase 1 (question only, wait for answer), Phase 2 (evaluation with rationale and references).

## When editing course content

`docs/course-plan-april-2026.md` is the single source of truth for the 4-hour flow. Each hour has Learning objectives -> Teaching flow -> Demo -> Exercise -> Resources sections; edit these in place rather than creating parallel files.

If an hour's content conflicts with `docs/ab100-exam-objectives.md`, the objectives doc wins -- or re-sync it from Microsoft Learn and update the hour. The legacy `src/hour1-plan/` through `src/hour4-security/` folders no longer exist; do not recreate them. Hour 3's "demo" is the `src/` POC stack.
