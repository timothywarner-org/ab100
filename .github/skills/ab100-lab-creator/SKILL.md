---
name: ab100-lab-creator
description: Create short AB-100 practice labs (15-25 minutes) that are executable and self-validating. Every lab includes prerequisites, exact tasks, validation steps, expected outputs, and cleanup. Scope covers agent design walkthroughs, Copilot Studio authoring, Microsoft Foundry tool configuration, ALM patterns, and governance controls. Use when the user asks for a hands-on lab, practice exercise, or guided walkthrough.
---

# Skill: ab100.practice_labs.micro.validated

**Description:** Create short AB-100 practice labs (15-25 minutes) that are executable and self-validating. Every lab includes prerequisites, exact tasks, validation steps, expected outputs, and cleanup.

## Lab categories

AB-100 labs span four practical categories:

- **Agent authoring** -- Copilot Studio topic and agent flow creation, Foundry agent manifests, declarative agents in Microsoft 365 Copilot.
- **Design walkthrough** -- structured design review against Power Platform Well-Architected, pattern selection (task vs autonomous vs prompt/response), build/buy/extend decision matrices.
- **ALM** -- Copilot Studio solution export/import, Power Platform Build Tools pipelines, Microsoft Foundry environment promotion, Dynamics 365 AI feature configuration migration.
- **Responsible AI & governance** -- DLP policies, environment strategy, agent security configuration, audit trail setup, responsible AI review checklist.

Lean on Copilot Studio (UI or YAML), Microsoft Foundry portal, Power Platform admin center, and Power Platform CLI. Avoid labs that require production-only Dynamics 365 modules unless the user confirms access.

## Grounding

**Required sources:**

- Microsoft Learn (primary truth source for architecture and correct configuration; access via the **Microsoft Learn MCP server** using `microsoft_docs_search` and `microsoft_docs_fetch`)
- Microsoft Learn code samples (for Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK, Bicep accuracy; access via `microsoft_code_sample_search`)

## Style

**Microsoft style:**

- Use Microsoft instruction formatting conventions for UI labels, commands, and dialog names.
- See `references/style-guide.md` for detailed Microsoft writing style rules.
- **Bold** for clickable UI elements. Input-neutral verbs: select (not click), enter (not type).

## Guardrails

- Keep the lab within AB-100 scope (solution architect tasks, not deep dev or pro-code AI model training).
- Prefer lowest-cost resources; include a cost warning if not. Copilot Studio trial and Power Apps Developer Plan cover most labs at no cost.
- No contractions.
- No ambiguous "click around until" steps.
- Always include cleanup or rollback steps. For labs that create solutions, environments, Foundry projects, or Dataverse records, list exact deletion or disable steps.
- Always use current Microsoft product names. Never use retired or legacy names such as "Azure AI Studio" (use "Microsoft Foundry"), "Power Virtual Agents" (use "Microsoft Copilot Studio"), "Azure AD" (use "Microsoft Entra ID"). See the full rename table in `.github/copilot-instructions.md`.

## Fictional company randomization (non-negotiable)

Use fictional company names from `references/fictional-companies.md` for any scenario context in lab titles or descriptions. You MUST randomize the company selection -- do not default to Contoso for every lab. Draw from the full list of 50+ companies.

## Timebox guidance

A lab should contain no more than 12 steps total across all tasks. If the lab requires more than 12 steps, it likely exceeds the 25-minute timebox. In that case, split the content into two separate labs, each focused on a narrower objective.

## Cost and licensing warning placement

If the lab uses premium Copilot Studio capacity, Microsoft Foundry models that incur charges, Dynamics 365 apps without a trial, or Azure resources beyond the free tier, the warning must appear immediately after the **prerequisites** section and before **starting_state**. This ensures users see the warning before they begin creating resources.

## Workflow

1. Choose a single AB-100 objective from `references/ab100-objectives.md` and state it at the top.
2. Ground the intended configuration in Microsoft Learn using `microsoft_docs_search` (what correct means).
3. Draft the lab steps using either the Copilot Studio portal, Microsoft Foundry portal, Power Platform admin center, or CLI (pick one primary path).
4. Use `microsoft_code_sample_search` to verify any Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK, or Bicep snippets are valid and current.
5. Use `microsoft_docs_fetch` for full page detail on any command, node kind, agent capability, or configuration step.
6. Add verification gates after each major step (fast checks -- Portal UI state, CLI output, solution checker result).
7. Add cleanup that exactly reverses the work.

## Output format

```yaml
lab:
  title: "<Action + artifact, e.g., 'Publish a Copilot Studio agent with MCP extensibility and ALM-ready solution export'>"
  objective: "<One sentence outcome tied to AB-100>"
  domain: "<one of Plan | Design | Deploy>"
  subdomain: "<e.g., Design extensibility of AI solutions>"
  category: "<agent-authoring | design-walkthrough | alm | responsible-ai-governance>"
  estimated_time: "<15-25 min>"
  prerequisites:
    - "<Copilot Studio trial, Microsoft 365 tenant, Power Platform Developer environment>"
    - "<Any required tools (Power Platform CLI, VS Code Copilot Studio extension)>"
  starting_state:
    - "<What must already exist>"
  tasks:
    - name: "<Task 1 name>"
      steps: |
        <Numbered steps only when sequencing matters. Use exact UI labels or exact commands.>
      validation:
        - "<Validation command + what success looks like>"
    - name: "<Task 2 name>"
      steps: |
        <...>
      validation:
        - "<...>"
  troubleshooting:
    - symptom: "<common failure>"
      fix: "<precise fix>"
  cleanup:
    steps: |
      <Exact resource / solution / environment deletion or rollback steps>
    validation:
      - "<Check that resources are gone>"
  references:
    - "<Microsoft Learn URL(s)>"
```

## Delivery rules

Labs are delivered in full (all sections in a single message). Unlike practice questions, there is no interactive hold-back of answers. If multiple labs are requested, deliver each lab sequentially in the same message.

## Quality checklist

- "Single objective, single outcome."
- "Every task has an explicit validation gate."
- "Cleanup is complete and safe."
- "Instructions use Microsoft formatting rules for UI labels and commands."
- "All product names use current terminology (no retired or legacy names)."
- "No contractions in any lab text."
- "Fictional company is randomized (not always Contoso)."
- "Lab category is one of agent-authoring, design-walkthrough, alm, or responsible-ai-governance."

---

## Prompt template

```text
Create {{count}} AB-100 micro-labs.

Inputs:

- domain: {{domain}} (or select from AB-100 study guide)
- objective: {{objective}} (or derive from Learn)
- category: {{category}} (agent-authoring | design-walkthrough | alm | responsible-ai-governance)
- tool_preference: {{tool_preference}} (Copilot Studio Portal | Copilot Studio YAML | Microsoft Foundry Portal | Power Platform CLI)
- timebox: {{timebox}} (default 20 minutes)

Requirements:

1. Ground the lab outcome in Microsoft Learn first using the Microsoft Learn MCP server.
2. Use microsoft_code_sample_search for YAML, CLI, or SDK accuracy.
3. Output using output_format exactly.
4. Randomize the fictional company name from references/fictional-companies.md.
```
