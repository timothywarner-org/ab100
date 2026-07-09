<!-- Cover Image -->
<p align="center">
  <img src="images/cover.png" alt="AB-100: Agentic AI Business Solutions Architect" width="600"/>
</p>

<p align="center">
  <a href="https://TechTrainerTim.com"><img src="https://img.shields.io/badge/Website-TechTrainerTim.com-1e90ff?logo=google-chrome&logoColor=white" alt="TechTrainerTim.com"></a>
  <a href="https://www.youtube.com/c/TechTrainerTim"><img src="https://img.shields.io/badge/YouTube-Subscribe-ff0000?logo=youtube&logoColor=white" alt="YouTube"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-brightgreen?logo=open-source-initiative&logoColor=white" alt="MIT License"></a>
  <a href="https://www.linkedin.com/in/timothywarner"><img src="https://img.shields.io/badge/LinkedIn-timothywarner-0077b5?logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  <a href="https://discord.com/users/timwarner1"><img src="https://img.shields.io/badge/Discord-timwarner1-5865F2?logo=discord&logoColor=white" alt="Discord"></a>
  <a href="https://mvp.microsoft.com/en-US/mvp/profile/e9a13bca-2798-4247-be56-f116f780869d"><img src="https://img.shields.io/badge/Microsoft%20MVP-2024-blueviolet?logo=microsoft&logoColor=white" alt="Microsoft MVP Profile"></a>
  <a href="https://learn.microsoft.com/credentials/certifications/exams/ab-100/"><img src="https://img.shields.io/badge/Microsoft%20Exam-AB--100-0078d4?logo=microsoft&logoColor=white" alt="Microsoft AB-100 Exam"></a>
</p>

# AB-100: Agentic AI Business Solutions Architect

**O'Reilly Live Learning Course** | 4 Hours | Microsoft AB-100 Exam Prep + Real-World Agentic AI

Design, deploy, and govern multi-agent AI business solutions across the Microsoft stack -- and walk in prepared to pass Microsoft's **AB-100** certification exam on the first attempt.

This repo has **three sides**:

1. **Live training plan** -- the canonical 4-hour plan and per-hour breakdowns in [`docs/course-plan-april-2026.md`](docs/course-plan-april-2026.md), plus the built slide deck in `docs/ab100-course-deck-april-2026.pptx`.
2. **Hour 3 Deploy POC** -- a working Foundry agent + MCP + ACA + APIM stack in [`src/`](src/). Five bash scripts spin it up, one tears it down. See [`src/README.md`](src/README.md).
3. **AB-100 Cert Buddy** -- a GitHub Copilot agent in [`.github/`](.github/) that generates exam-realistic practice questions, short architect-grade labs, and personalized study plans, all grounded in **Microsoft Learn** via MCP. Open the repo in VS Code and invoke `@ab100-cert-buddy-agent` in Copilot Chat. See the [Cert Buddy quick start](#ab-100-cert-buddy) below.

## Course overview

| Hour | Theme                        | AB-100 Domain                                   |
| ---- | ---------------------------- | ----------------------------------------------- |
| 1    | Plan AI Solutions            | Plan AI-powered business solutions (25-30%)     |
| 2    | Design AI Solutions          | Design AI-powered business solutions (25-30%)   |
| 3    | Deploy AI Solutions          | Deploy -- implementation & operations (~20-25%) |
| 4    | Security & Exam Mastery      | Deploy -- security & governance (~20-25%)       |

## Prerequisites

- A Microsoft 365 tenant with Microsoft 365 Copilot and Microsoft Copilot Studio licensing
  (a developer tenant or trial works for the demos).
- A Microsoft Power Platform environment for agent authoring and a Microsoft Foundry
  project for the model and Foundry Tools demos.
- Working knowledge of one Microsoft business application stack -- Dynamics 365 customer
  experience and service, Dynamics 365 finance and supply chain, or Microsoft Power
  Platform -- consistent with the AB-100 prerequisite associate certifications.
- Comfort with prompt engineering basics, ALM concepts, and baseline cloud security
  vocabulary (identity, RBAC, data residency, audit logging).

Full prerequisite detail: [`docs/course-plan-april-2026.md`](docs/course-plan-april-2026.md).

## Repository structure

```text
ab100/
├── README.md                 # This file
├── CLAUDE.md                 # Claude Code instructions
├── CODE_OF_CONDUCT.md        # Community guidelines
├── contributing.md           # Contribution guide
├── SECURITY.md               # Security policy
├── LICENSE                   # MIT License
├── .markdownlint.json        # Markdown linting config
├── .editorconfig             # Editor formatting consistency
│
├── .github/                  # Cert Buddy agent + skills + prompts
│   ├── agents/
│   │   └── ab100-cert-buddy-agent.agent.md
│   ├── skills/
│   │   ├── ab100-item-creator/SKILL.md
│   │   ├── ab100-lab-creator/SKILL.md
│   │   └── ab100-study-planner/SKILL.md
│   ├── prompts/
│   │   ├── ab100-quiz.prompt.md
│   │   ├── ab100-lab.prompt.md
│   │   └── ab100-plan.prompt.md
│   ├── copilot-instructions.md
│   └── workflows/validate.yml
│
├── .vscode/                  # MCP server + recommended extensions
│   ├── mcp.json
│   └── extensions.json
│
├── docs/                                   # Course plan, exam reference, slide deck
│   ├── course-plan-april-2026.md           # Canonical 4-hour plan
│   ├── ab100-exam-objectives.md            # Verbatim Microsoft Learn skills measured
│   ├── ab100-portals-and-products.md       # Architect-grade portal/product index
│   ├── ab100-metrics-dashboards-reports.md # Highest-yield dashboards and reports
│   ├── ab100-study-resources.md            # Curated public AB-100 content
│   ├── microsoft-certification-policies.md
│   ├── pearson-vue-registration.md
│   ├── ab100-poc-architecture.html         # Standalone POC architecture diagram
│   ├── ab100-course-deck-april-2026.pptx   # Built slide deck (canonical artifact)
│   ├── deck-build/                         # HTML slide sources + Node build pipeline
│   └── learning-paths/architect-agentic-ai/  # Local mirror of MS Learn path (11 modules)
│
├── images/cover.png          # Course cover image
└── src/                      # Hour 3 Deploy POC -- Foundry agent + MCP + ACA + APIM
    ├── README.md             # Five-command demo + teardown
    ├── app/                  # Python MCP server (FastMCP) wrapping a Foundry agent
    ├── infra/                # Modular Bicep (UAMI, Logs, ACR, ACA, APIM)
    ├── policies/             # APIM inbound policy
    └── scripts/              # 00-login -> 99-teardown bash demo flow
```

## Quick start

1. **Clone the repository**

   ```bash
   git clone https://github.com/timothywarner-org/ab100.git
   ```

2. **Read the course plan:** [`docs/course-plan-april-2026.md`](docs/course-plan-april-2026.md) -- per-hour learning objectives, teaching flow, demos, exercises, and Microsoft Learn module mapping.
3. **Open the slide deck:** [`docs/ab100-course-deck-april-2026.pptx`](docs/ab100-course-deck-april-2026.pptx).
4. **Bookmark the links:** [`REFERENCES.md`](REFERENCES.md) -- verified canonical links for the exam,
   registration, policy, free training, and practice tests.
5. **Run the Hour 3 POC:** [`src/README.md`](src/README.md) -- five bash scripts spin up Foundry agent + MCP + ACA + APIM in your subscription.
6. **Use the Cert Buddy:** open the repo in VS Code and invoke `@ab100-cert-buddy-agent` in Copilot Chat.

## Hour summaries

### Hour 1: Plan AI Solutions

Requirements analysis, AI strategy on the Cloud Adoption Framework, multi-agent platform
selection across Microsoft 365 Copilot, Microsoft Copilot Studio, and Microsoft Foundry,
plus ROI and build-buy-extend analysis. Maps to AB-100 Domain 1 (25-30%). See
[Hour 1 in the course plan](docs/course-plan-april-2026.md#hour-1----plan-ai-solutions-domain-1-25-30).

### Hour 2: Design AI Solutions

Task, autonomous, and prompt-and-response agents, Microsoft Copilot Studio topics and
agent flows, Microsoft Foundry Tools, MCP and A2A extensibility, Computer Use, voice
mode, and Microsoft Power Platform Well-Architected Framework alignment for intelligent
workloads. Maps to AB-100 Domain 2 (25-30%). See
[Hour 2 in the course plan](docs/course-plan-april-2026.md#hour-2----design-ai-solutions-domain-2-25-30).

### Hour 3: Deploy AI Solutions

Monitoring and telemetry interpretation, agent testing strategy, and ALM for agents,
connectors, custom models, and Dynamics 365 AI. Live demo materializes as the
Foundry-agent-as-MCP-server stack in [`src/`](src/). Maps to AB-100 Domain 3
implementation & operations subset (~20-25%).

### Hour 4: Security & Exam Mastery

AI security, governance, prompt manipulation defense, data residency, audit trails,
Responsible AI review, plus AB-100 exam logistics, item formats, and final-week study
plan. Builds on the Hour 3 POC by layering `validate-jwt`, named-values-from-Key-Vault,
`azure-openai-token-limit`, and Defender for APIs on the same artifact. Maps to AB-100
Domain 3 security & governance subset (~20-25%) plus exam readiness.

## Course schedule

| Time         | Activity                                                  |
| ------------ | --------------------------------------------------------- |
| 0:00 -- 0:50 | Hour 1 -- Plan AI Solutions                               |
| 0:50 -- 1:00 | Q&A + Break                                               |
| 1:00 -- 1:50 | Hour 2 -- Design AI Solutions                             |
| 1:50 -- 2:00 | Q&A + Break                                               |
| 2:00 -- 2:50 | Hour 3 -- Deploy AI Solutions                             |
| 2:50 -- 3:00 | Q&A + Break                                               |
| 3:00 -- 3:50 | Hour 4 -- Security & Exam Mastery                         |
| 3:50 -- 4:00 | Wrap-up, resources, next steps                            |

Full plan in [`docs/course-plan-april-2026.md`](docs/course-plan-april-2026.md).

## Microsoft Learn path companion

This course is sequenced to align with the Microsoft Learn path
[Architect AI solutions for business productivity](https://learn.microsoft.com/training/paths/architect-agentic-ai-business-solutions/).
The path's 11 modules are mirrored locally with per-module summaries and AB-100 domain
mapping at [`docs/learning-paths/architect-agentic-ai/`](docs/learning-paths/architect-agentic-ai/README.md).
Drill in between live sessions to deepen any topic introduced during an hour.

## Instructor

**Tim Warner** -- Microsoft MVP (Azure AI and Cloud/Datacenter Management), Microsoft Certified Trainer

- [LinkedIn](https://www.linkedin.com/in/timothywarner/)
- [Website](https://techtrainertim.com/)
- [O'Reilly Author Page](https://learning.oreilly.com/search/?query=Tim%20Warner)

## AB-100 Cert Buddy

An AI-powered study companion for the **Microsoft AB-100: Agentic AI Business Solutions Architect** certification, built entirely on GitHub Copilot agents. The buddy lives in [`.github/`](.github/) as agent definitions, skill specs, prompt templates, and an MCP server configuration that turns GitHub Copilot Chat into an interactive exam coach.

The agent generates **exam-realistic practice questions** with two-phase interactive evaluation, **short hands-on labs** (15-25 minutes) across agent authoring, design walkthroughs, ALM, and governance, and **personalized study plans** based on your self-assessed confidence across the three AB-100 domains. All content is original and grounded in Microsoft Learn via MCP.

### Cert Buddy prerequisites

| Requirement | Purpose |
| --- | --- |
| **VS Code** | IDE with Copilot Chat support |
| **GitHub Copilot Chat extension** | Runs the agent and skills inside VS Code |
| **Microsoft 365 tenant** | Required for Copilot Studio and Microsoft 365 Copilot labs |
| **Copilot Studio trial** | [Start a trial](https://copilotstudio.microsoft.com) -- required for hands-on Copilot Studio labs |
| **Azure subscription** (optional) | Only needed for Microsoft Foundry labs that create Azure resources |

No API keys, Node.js, or Python are required. The Microsoft Learn MCP server is a free hosted service with no sign-up.

### Cert Buddy quick start

1. Open the folder in VS Code:

   ```bash
   code ab100
   ```

2. The Microsoft Learn MCP server is defined in [`.vscode/mcp.json`](.vscode/mcp.json) and auto-configures when the workspace loads.

3. Open **GitHub Copilot Chat** and invoke the agent:

   ```text
   @ab100-cert-buddy-agent Generate 5 practice questions on Copilot Studio extensibility with MCP
   ```

   Or use the slash commands. Type `/` in Copilot Chat:

   ```text
   /ab100-quiz
   /ab100-lab
   /ab100-plan
   ```

### Cert Buddy skills

| Skill | File | What it does |
| --- | --- | --- |
| `ab100-item-creator` | [`.github/skills/ab100-item-creator/SKILL.md`](.github/skills/ab100-item-creator/SKILL.md) | Exam-realistic AB-100 practice questions with two-phase interactive delivery (question -> wait -> evaluate). |
| `ab100-lab-creator` | [`.github/skills/ab100-lab-creator/SKILL.md`](.github/skills/ab100-lab-creator/SKILL.md) | 15-25 minute self-validating labs across agent authoring, design walkthroughs, ALM, and governance. |
| `ab100-study-planner` | [`.github/skills/ab100-study-planner/SKILL.md`](.github/skills/ab100-study-planner/SKILL.md) | Personalized study plans based on confidence across the three AB-100 domains, with real Microsoft Learn module links. |

### Cert Buddy MCP server

| Server ID | Technology | Purpose |
| --- | --- | --- |
| `ab100buddy-mslearn` | `https://learn.microsoft.com/api/mcp` (HTTP) | Free Microsoft Learn MCP server -- no API keys, no sign-up. Provides `microsoft_docs_search`, `microsoft_docs_fetch`, and `microsoft_code_sample_search`. Grounds all cert-buddy content in official Microsoft documentation. |

### Cert Buddy key rules

- **Grounded in Microsoft Learn.** Every question and lab is grounded in official Learn docs via MCP before any other source.
- **Current terminology only.** Legacy names like "Azure AI Studio" and "Power Virtual Agents" are silently replaced with "Microsoft Foundry" and "Microsoft Copilot Studio." See the full rename table in [`.github/copilot-instructions.md`](.github/copilot-instructions.md).
- **Original content only.** The agent never recreates, paraphrases, or references real exam questions, braindumps, or leaked content.
- **No contractions. No trick wording. Distractors must be real.**
- **Answer randomization.** Correct answer position is distributed across A/B/C/D.
- **Company randomization.** Scenarios draw from the WWL-approved Fictitious Names List embedded directly in the agent and skill files -- always the entire company name, never just *Contoso*.
- **Labs include cleanup.** Every lab ends with exact rollback or deletion steps.
- **Microsoft style.** Items follow the Microsoft Worldwide Learning Exam Writing Style Guide; prose follows the Microsoft Writing Style Guide. Both rule sets are inlined into the agent and skill files.

## Disclaimer

This is an **unofficial** study guide. Always refer to the [official Microsoft exam page](https://learn.microsoft.com/credentials/certifications/exams/ab-100/) for the most current information.

## License

MIT License. See [`LICENSE`](./LICENSE) for details.

---

**Questions?** Open an issue or reach out via the course chat during live sessions.
