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

Design, deploy, and govern multi-agent AI business solutions across the Microsoft stack — and walk in prepared to pass Microsoft's **AB-100** certification exam on the first attempt.

This repo has **two sides**:

1. **Live training scaffolding** — hour-by-hour course material in [`src/`](src/) and the plan in [`docs/`](docs/).
2. **AB-100 Cert Buddy** — a GitHub Copilot agent in [`.github/`](.github/) that generates exam-realistic practice questions, short architect-grade labs, and personalized study plans, all grounded in **Microsoft Learn** via MCP. Open the repo in VS Code and invoke `@ab100-cert-buddy-agent` in Copilot Chat. See the [Cert Buddy quick start](#ab-100-cert-buddy) below.

## Course overview

| Hour | Theme                        | AB-100 Domain                                   |
| ---- | ---------------------------- | ----------------------------------------------- |
| 1    | Plan AI Solutions            | Plan AI-powered business solutions (25–30%)    |
| 2    | Design AI Solutions          | Design AI-powered business solutions (25–30%)  |
| 3    | Deploy AI Solutions          | Deploy — implementation & operations (~20–25%) |
| 4    | Security & Exam Mastery      | Deploy — security & governance (~20–25%)       |

## Prerequisites

- _To be finalized — see [`docs/course-plan.md`](docs/course-plan.md)_

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
│   │   ├── ab100-practice-question.prompt.md
│   │   ├── ab100-practice-lab.prompt.md
│   │   └── ab100-study-planner.prompt.md
│   ├── copilot-instructions.md
│   └── workflows/validate.yml
│
├── .vscode/                  # MCP server + recommended extensions
│   ├── mcp.json
│   └── extensions.json
│
├── docs/                     # Course plan + reference notes
│   └── course-plan.md
│
├── references/               # Cert Buddy grounding data
│   ├── ab100-objectives.md   # AB-100 skills measured (synced from Learn)
│   ├── fictional-companies.md
│   └── style-guide.md
│
├── images/                   # Course images and assets
├── scripts/                  # Setup helpers (if needed)
└── src/                      # Per-hour teaching materials
    ├── hour1-plan/           # Plan AI Solutions
    ├── hour2-design/         # Design AI Solutions
    ├── hour3-deploy/         # Deploy AI Solutions
    └── hour4-security/       # Security & Exam Mastery
```

## Quick start

1. **Clone the repository**

   ```bash
   git clone https://github.com/timothywarner-org/ab100.git
   ```

2. **Hour 1 — Plan AI Solutions:** [`src/hour1-plan/`](src/hour1-plan/)
3. **Hour 2 — Design AI Solutions:** [`src/hour2-design/`](src/hour2-design/)
4. **Hour 3 — Deploy AI Solutions:** [`src/hour3-deploy/`](src/hour3-deploy/)
5. **Hour 4 — Security & Exam Mastery:** [`src/hour4-security/`](src/hour4-security/)

## Hour summaries

### Hour 1: Plan AI Solutions

**Theme:** _TBD before delivery_

Maps to AB-100 Domain 1 (25–30%). See [`src/hour1-plan/`](src/hour1-plan/).

### Hour 2: Design AI Solutions

**Theme:** _TBD before delivery_

Maps to AB-100 Domain 2 (25–30%). See [`src/hour2-design/`](src/hour2-design/).

### Hour 3: Deploy AI Solutions

**Theme:** _TBD before delivery_

Maps to AB-100 Domain 3 implementation & operations (~20–25%). See [`src/hour3-deploy/`](src/hour3-deploy/).

### Hour 4: Security & Exam Mastery

**Theme:** _TBD before delivery_

Maps to AB-100 Domain 3 security & governance (~20–25%), plus exam readiness. See [`src/hour4-security/`](src/hour4-security/).

## Course schedule

| Time        | Activity                                                  |
| ----------- | --------------------------------------------------------- |
| 0:00 – 0:50 | Hour 1 — Plan AI Solutions                                |
| 0:50 – 1:00 | Q&A + Break                                               |
| 1:00 – 1:50 | Hour 2 — Design AI Solutions                              |
| 1:50 – 2:00 | Q&A + Break                                               |
| 2:00 – 2:50 | Hour 3 — Deploy AI Solutions                              |
| 2:50 – 3:00 | Q&A + Break                                               |
| 3:00 – 3:50 | Hour 4 — Security & Exam Mastery                          |
| 3:50 – 4:00 | Wrap-up, resources, next steps                            |

Full plan in [`docs/course-plan.md`](docs/course-plan.md).

## Instructor

**Tim Warner** — Microsoft MVP (Azure AI and Cloud/Datacenter Management), Microsoft Certified Trainer

- [LinkedIn](https://www.linkedin.com/in/timothywarner/)
- [Website](https://techtrainertim.com/)
- [O'Reilly Author Page](https://learning.oreilly.com/search/?query=Tim%20Warner)

## AB-100 Cert Buddy

An AI-powered study companion for the **Microsoft AB-100: Agentic AI Business Solutions Architect** certification, built entirely on GitHub Copilot agents. No application code — the buddy lives in [`.github/`](.github/) as agent definitions, skill specs, prompt templates, and an MCP server configuration that turns GitHub Copilot Chat into an interactive exam coach.

The agent generates **exam-realistic practice questions** with two-phase interactive evaluation, **short hands-on labs** (15–25 minutes) across agent authoring, design walkthroughs, ALM, and governance, and **personalized study plans** based on your self-assessed confidence across the three AB-100 domains. All content is original and grounded in Microsoft Learn via MCP.

### Cert Buddy prerequisites

| Requirement | Purpose |
| --- | --- |
| **VS Code** | IDE with Copilot Chat support |
| **GitHub Copilot Chat extension** | Runs the agent and skills inside VS Code |
| **Microsoft 365 tenant** | Required for Copilot Studio and Microsoft 365 Copilot labs |
| **Copilot Studio trial** | [Start a trial](https://copilotstudio.microsoft.com) — required for hands-on Copilot Studio labs |
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
   /ab100-practice-question
   /ab100-practice-lab
   /ab100-study-planner
   ```

### Cert Buddy skills

| Skill | File | What it does |
| --- | --- | --- |
| `ab100-item-creator` | [`.github/skills/ab100-item-creator/SKILL.md`](.github/skills/ab100-item-creator/SKILL.md) | Exam-realistic AB-100 practice questions with two-phase interactive delivery (question → wait → evaluate). |
| `ab100-lab-creator` | [`.github/skills/ab100-lab-creator/SKILL.md`](.github/skills/ab100-lab-creator/SKILL.md) | 15–25 minute self-validating labs across agent authoring, design walkthroughs, ALM, and governance. |
| `ab100-study-planner` | [`.github/skills/ab100-study-planner/SKILL.md`](.github/skills/ab100-study-planner/SKILL.md) | Personalized study plans based on confidence across the three AB-100 domains, with real Microsoft Learn module links. |

### Cert Buddy MCP server

| Server ID | Technology | Purpose |
| --- | --- | --- |
| `ab100buddy-mslearn` | `https://learn.microsoft.com/api/mcp` (HTTP) | Free Microsoft Learn MCP server — no API keys, no sign-up. Provides `microsoft_docs_search`, `microsoft_docs_fetch`, and `microsoft_code_sample_search`. Grounds all cert-buddy content in official Microsoft documentation. |

### Cert Buddy key rules

- **Grounded in Microsoft Learn.** Every question and lab is grounded in official Learn docs via MCP before any other source.
- **Current terminology only.** Legacy names like "Azure AI Studio" and "Power Virtual Agents" are silently replaced with "Microsoft Foundry" and "Microsoft Copilot Studio." See the full rename table in [`.github/copilot-instructions.md`](.github/copilot-instructions.md).
- **Original content only.** The agent never recreates, paraphrases, or references real exam questions, braindumps, or leaked content.
- **No contractions. No trick wording. Distractors must be real.**
- **Answer randomization.** Correct answer position is distributed across A/B/C/D.
- **Company randomization.** Scenarios draw from [`references/fictional-companies.md`](references/fictional-companies.md) — not always Contoso.
- **Labs include cleanup.** Every lab ends with exact rollback or deletion steps.
- **Microsoft style.** All content follows the Microsoft Writing Style Guide ([`references/style-guide.md`](references/style-guide.md)).

## Disclaimer

This is an **unofficial** study guide. Always refer to the [official Microsoft exam page](https://learn.microsoft.com/credentials/certifications/exams/ab-100/) for the most current information.

## License

MIT License. See [`LICENSE`](./LICENSE) for details.

---

**Questions?** Open an issue or reach out via the course chat during live sessions.
