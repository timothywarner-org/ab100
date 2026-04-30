# Contributing to AB-100 Cert Buddy + O'Reilly Course Repo

Thank you for your interest in contributing. This repo serves two audiences: learners preparing for Microsoft exam **AB-100: Agentic AI Business Solutions Architect**, and attendees of Tim Warner's O'Reilly Live Learning course. Contributions of all kinds are welcome — whether you are fixing a typo, updating terminology, proposing a new skill, improving reference material, or filling in course scaffolding.

## How to contribute

### Report issues

If you find something that is incorrect, outdated, or broken, please open a GitHub issue. Common examples include:

- **Outdated Microsoft terminology** — a retired product name that should use the current Microsoft name (for example, "Azure AI Studio" should be "Microsoft Foundry", "Power Virtual Agents" should be "Microsoft Copilot Studio").
- **Incorrect architecture guidance** — a question rationale or lab step that does not match current Copilot Studio, Microsoft Foundry, Dynamics 365, or Power Platform behavior.
- **Broken MCP configurations** — a server definition in `.vscode/mcp.json` that fails to start.
- **Inaccurate references** — a Microsoft Learn URL that no longer resolves or points to the wrong topic.
- **Drift from the AB-100 study guide** — if `docs/ab100-exam-objectives.md` falls out of sync with the [live study guide](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-100).

When opening an issue, include enough detail to locate and reproduce the problem (file path, line number, expected vs. actual behavior).

### Suggest new skills or prompt templates

Have an idea for a new agent skill or prompt template? Open an issue describing:

- What the skill or prompt would do.
- Which AB-100 domain or subdomain it would cover.
- How it would differ from the existing `ab100-item-creator`, `ab100-lab-creator`, and `ab100-study-planner` skills.

### Improve canonical references

Authoritative AB-100 facts live in two places:

- `docs/ab100-exam-objectives.md` — verbatim sync from the Microsoft Learn study guide.
- The agent and skill files themselves (`.github/agents/ab100-cert-buddy-agent.agent.md`, `.github/skills/*/SKILL.md`) — embedded WWL exam-writing rules, MWSG prose rules, the WWL-approved fictional company list, the WWL-approved city list, resource-naming conventions, and the retired-to-current product rename table.

If any of these documents are out of date or incomplete, submit a pull request with corrections.

### Fill in course scaffolding

Each hour's README (`src/hour1-plan/` through `src/hour4-security/`) has bracketed italic placeholders for learning objectives, demos, and exercises. Replace placeholders in place — do not create parallel files. Keep the existing section structure.

### Fix documentation

Improvements to the README, this file, `CLAUDE.md`, or any other documentation are always appreciated.

## Contribution guidelines

All contributions must follow these rules. These are the same rules the agent itself enforces.

### Terminology

Always use current Microsoft product names. Never use a retired or legacy name, even if it appears in user-facing text you are quoting. The full rename table lives in `.github/copilot-instructions.md`. Common renames include:

| Retired / legacy name | Current name |
| --- | --- |
| Azure Active Directory (Azure AD) | Microsoft Entra ID |
| Azure AD Conditional Access | Microsoft Entra Conditional Access |
| Azure OpenAI Service (standalone, post-rebrand) | Azure OpenAI in Microsoft Foundry |
| Azure AI Studio / Azure AI Foundry | Microsoft Foundry |
| Azure AI Foundry Tools | Microsoft Foundry Tools |
| Power Virtual Agents | Microsoft Copilot Studio |
| Copilot for Microsoft 365 | Microsoft 365 Copilot |
| Copilot for Sales / Copilot for Service | Microsoft 365 Copilot for Sales / Microsoft 365 Copilot for Service |
| Dataverse for Teams | Microsoft Dataverse |

If Microsoft Learn shows a different current name than what appears above, prefer the Learn name.

### Writing style

- **No contractions** in any generated content or instructions. Write "do not" instead of "don't," "cannot" instead of "can't," and so on.
- **Plain ASCII only.** Do not use curly quotes, en dashes, em dashes, or other non-ASCII characters. Use straight quotes and double hyphens (`--`) instead.
- **Microsoft style formatting.** Use **bold** for UI labels. Use sentence-style capitalization for headings and labels.
- **Avoid negatives** unless required. When a negative word is necessary, **bold** and CAPITALIZE it (for example, "Which option does **NOT** support...").

### Content integrity

- **Questions must be original.** Do not copy, paraphrase, or reference real exam questions, braindumps, or leaked content. Every scenario and stem must be written from scratch.
- **Distractors must be real.** Wrong answer choices must reference actual Microsoft services, agent types, Foundry tools, Copilot Studio node kinds, and Dynamics 365 features. Never invent fake services, connectors, or capabilities.
- **Labs must include cleanup steps.** Every practice lab must end with steps that remove all resources, solutions, or environments created during the exercise.
- **All claims must be groundable in Microsoft Learn.** If you cannot find a supporting reference on Microsoft Learn, do not include the claim.

## File conventions

- Skill names must match the `name` field in the skill's YAML frontmatter, not the folder name.
- Skills are auto-discovered from `.github/skills/` folders. There is no `skills:` field in agent YAML frontmatter.
- Prompt `agent:` fields must match the agent's `name` field. Current value: `ab100-cert-buddy-agent`.
- MCP server IDs in tool lists must match IDs in `.vscode/mcp.json`. Current value: `ab100buddy-mslearn`.

## Review process

- The maintainer reviews PRs in priority order: course-delivery blockers first, then exam-content updates, then hygiene.
- CI (`.github/workflows/validate.yml`) runs terminology, ASCII, contraction, and link checks. Warnings do not block merge, but fix them when practical.
- Expect review feedback within five business days during course-delivery windows, longer otherwise.

## Questions

Open an issue or contact **Tim Warner** at **tim@techtrainertim.com**.
