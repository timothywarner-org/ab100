---
name: ab100-lab-creator
description: Create short AB-100 practice labs (15-25 minutes) that are executable and self-validating. Every lab includes prerequisites, exact tasks, validation steps, expected outputs, and cleanup. Scope covers agent design walkthroughs, Copilot Studio authoring, Microsoft Foundry tool configuration, ALM patterns, and governance controls. Use when the user asks for a hands-on lab, practice exercise, or guided walkthrough.
---

# Skill: ab100.practice_labs.micro.validated

**Description:** Create short AB-100 practice labs (15-25 minutes) that are executable and self-validating. Every lab includes prerequisites, exact tasks, validation steps, expected outputs, and cleanup.

## Style precedence

Follow the **Microsoft Worldwide Learning Exam Writing Style Guide** (WWL) for any text that mirrors exam phrasing (titles, goal statements, named resources, company references). Follow the **Microsoft Writing Style Guide** (MWSG) for the lab prose itself: warm, scannable, present-tense, sentence-style capitalization. Two MWSG conventions overridden by WWL for our labs: **no contractions** and **all uppercase for key names** (TAB, ENTER, CTRL+ALT+DELETE).

## Lab categories

AB-100 labs span four practical categories:

- **Agent authoring** -- Copilot Studio topic and agent flow creation, Foundry agent manifests, declarative agents in Microsoft 365 Copilot.
- **Design walkthrough** -- structured design review against the Power Platform Well-Architected framework, pattern selection (task vs autonomous vs prompt/response), build/buy/extend decision matrices.
- **ALM** -- Copilot Studio solution export and import, Power Platform Build Tools pipelines, Microsoft Foundry environment promotion, Dynamics 365 AI feature configuration migration.
- **Responsible AI and governance** -- DLP policies, environment strategy, agent security configuration, audit trail setup, responsible AI review checklist.

Default authoring tools: Copilot Studio (UI or YAML), Microsoft Foundry portal, Power Platform admin center, Power Platform CLI. Avoid labs that require production-only Dynamics 365 modules unless the user confirms access.

## Grounding

**Required sources:**

- Microsoft Learn (truth source for architecture and correct configuration). Access via the **Microsoft Learn MCP server** using `microsoft_docs_search` and `microsoft_docs_fetch`.
- Microsoft Learn code samples (for Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK, Bicep accuracy). Access via `microsoft_code_sample_search`.
- Canonical AB-100 skills outline: `docs/ab100-exam-objectives.md`.

## AB-100 domains (canonical)

| Domain | Weight |
| --- | --- |
| Plan AI-powered business solutions | 25-30% |
| Design AI-powered business solutions | 25-30% |
| Deploy AI-powered business solutions | 40-45% |

## Style and word usage

### Resource and people naming (WWL)

- **Companies:** Use only WWL-approved fictional companies from the table below. Use the **entire** company name on every mention.
- **People:** *the user* or **User1, User2, User3** (no spaces).
- **Servers:** Server1, Server2; Exch1, Exch2; SQL1, SQL2; DC1, DC2; DNS1, DNS2.
- **Computers:** Computer1, Computer2. **Applications:** App1, App2. **Subnets:** Subnet1, Subnet2. **Sites:** Site1, Site2.
- **Offices:** *main office*, *branch office*, *satellite office*. **Cities:** WWL-approved (Atlanta, Boston, Cairo, Frankfurt, London, New York, Paris, Seattle, Singapore, Sydney, Tokyo, etc.).
- Define each name on first mention.

### Approved fictional companies (WWL Fictitious Names List)

Always use the **entire** company name. Randomize across the list -- do not default to Contoso, Ltd.

| Company | Approved URL |
| --- | --- |
| A. Datum Corporation | adatum.com |
| Adventure Works Cycles | adventure-works.com |
| Alpine Ski House | alpineskihouse.com |
| Bellows College | bellowscollege.com |
| Best For You Organics Company | bestforyouorganics.com |
| Blue Yonder Airlines | blueyonderairlines.com |
| City Power & Light | cpandl.com |
| Coho Vineyard | cohovineyard.com |
| Coho Winery | cohowinery.com |
| Coho Vineyard & Winery | cohovineyardandwinery.com |
| Consolidated Messenger | consolidatedmessenger.com |
| Contoso, Ltd. | contoso.com |
| Contoso Pharmaceuticals | contoso.com |
| Contoso Suites | contososuites.com |
| Fabrikam, Inc. | fabrikam.com |
| Fabrikam Residences | fabrikamresidences.com |
| First Up Consultants | firstupconsultants.com |
| Fourth Coffee | fourthcoffee.com |
| Graphic Design Institute | graphicdesigninstitute.com |
| Humongous Insurance | humongousinsurance.com |
| Lamna Healthcare Company | lamnahealthcare.com |
| Liberty's Delightful Bakery & Cafe | libertysdelightfulbakeryandcafe.com |
| Litware, Inc. | litwareinc.com |
| Lucerne Publishing | lucernepublishing.com |
| Margie's Travel | margiestravel.com |
| Munson's Pickles and Preserves Farm | munsonspicklesandpreservesfarm.com |
| Nod Publishers | nodpublishers.com |
| Northwind Electric Cars | northwindelectriccars.com |
| Northwind Traders | northwindtraders.com |
| Proseware, Inc. | proseware.com |
| Relecloud | relecloud.com |
| School of Fine Art | fineartschool.net |
| Southridge Video | southridgevideo.com |
| Tailspin Toys | tailspintoys.com |
| The Phone Company | thephone-company.com |
| Trey Research | treyresearch.net |
| VanArsdel, Ltd. | vanarsdelltd.com |
| Wide World Importers | wideworldimporters.com |
| Wingtip Toys | wingtiptoys.com |
| Woodgrove Bank | woodgrovebank.com |

### Word usage (WWL)

- **named**, not *called*.
- **report**, not *complain*.
- Avoid *determine*; use *verify, identify, set, establish, calculate, decide*.
- Avoid *may*; use *can* or *might*.
- Avoid *using* alone; use *by using*.
- Avoid specific determiners (*all, none, only, always, never*) and indefinite qualifiers (*few, many, multiple, several, some, usually*).
- *site* logical, *location* physical -- never interchange.
- Plural over *(s)*.
- Goal statements: *You need to ...* / *You need to ensure that ...*

### Formatting

- **Bold** for clickable UI elements and PowerShell cmdlets.
- Input-neutral verbs: *select* (not *click*), *enter* (not *type*), *go to*, *open*, *close*.
- Imperative mood in procedure steps.
- File names labelled with *file*: *the deploy.bicep file*.
- **All uppercase** for key names: TAB, ENTER, CTRL+ALT+DELETE.
- Sentence-style capitalization elsewhere; product names and proper nouns are exceptions.
- Oxford comma in lists of three or more.
- Plain ASCII -- no curly quotes, en or em dashes; use `--` and `->`.
- Spell out zero through nine; numerals for 10 and above.

### Globalization

- Sentences 15-20 words. Active voice. Simple tenses.
- No `/` or `-` as punctuation (replace *create/edit/display* with *create, edit, and display*).
- No possessives on product names. No nominalizations. No noun stacks.

## Terminology rename table (non-negotiable)

Always use current Microsoft product names. Never use a retired or legacy name, even if the user does. Silently map to the current name.

| Retired / legacy name | Current name |
| --- | --- |
| Azure Active Directory (Azure AD) | Microsoft Entra ID |
| Azure AD tenant | Microsoft Entra tenant |
| Azure AD Conditional Access | Microsoft Entra Conditional Access |
| Azure AD B2B / B2C | Microsoft Entra External ID |
| Azure AD PIM | Microsoft Entra Privileged Identity Management |
| Azure OpenAI Service (standalone, post-rebrand) | Azure OpenAI in Microsoft Foundry |
| Azure AI Studio | Microsoft Foundry |
| Azure AI Foundry | Microsoft Foundry |
| Azure AI Foundry Tools | Microsoft Foundry Tools |
| Copilot Studio classic topics | Copilot Studio topics |
| Power Virtual Agents | Microsoft Copilot Studio |
| Copilot for Microsoft 365 | Microsoft 365 Copilot |
| Copilot for Sales / Copilot for Service | Microsoft 365 Copilot for Sales / Microsoft 365 Copilot for Service |
| Dataverse for Teams | Microsoft Dataverse |

## Guardrails

- Stay within AB-100 scope (solution architect tasks, not deep dev or pro-code AI model training).
- Prefer lowest-cost resources. The Copilot Studio trial and Power Apps Developer Plan cover most labs at no cost.
- **No contractions** anywhere in the lab.
- No ambiguous *click around until* steps. Every step has an exact UI label or exact command.
- Always include cleanup or rollback. For labs that create solutions, environments, Foundry projects, or Dataverse records, list exact deletion or disable steps.

## Fictional company randomization (non-negotiable)

Randomize across the WWL approved list above. Do not default to Contoso, Ltd. Always use the full company name.

## Timebox guidance

A lab contains no more than 12 steps total across all tasks. If the lab requires more, split into two narrower labs.

## Cost and licensing warning placement

If the lab uses premium Copilot Studio capacity, Microsoft Foundry models that incur charges, Dynamics 365 apps without a trial, or Azure resources beyond the free tier, the warning appears immediately after **prerequisites** and before **starting_state**.

## Workflow

1. Choose a single AB-100 objective from `docs/ab100-exam-objectives.md` and state it at the top.
2. Ground the intended configuration in Microsoft Learn using `microsoft_docs_search`.
3. Pick one primary path (Copilot Studio portal, Microsoft Foundry portal, Power Platform admin center, or CLI).
4. Use `microsoft_code_sample_search` to verify any Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK, or Bicep snippets.
5. Use `microsoft_docs_fetch` for full-page detail on any command, node kind, agent capability, or configuration step.
6. Add verification gates after each major step (Portal UI state, CLI output, solution checker result).
7. Add cleanup that exactly reverses the work.
8. Run a **WWL style sweep**: company names full and approved; resource names follow Server1/Computer1/App1 pattern; people are *the user* or User1/User2; no contractions; no banned word usage; UI labels bolded; key names uppercase.

## Output format

```yaml
lab:
  title: "<Action + artifact, for example, 'Publish a Copilot Studio agent with MCP extensibility and ALM-ready solution export'>"
  objective: "<one sentence outcome tied to AB-100>"
  domain: "<Plan | Design | Deploy>"
  subdomain: "<for example, Design extensibility of AI solutions>"
  category: "<agent-authoring | design-walkthrough | alm | responsible-ai-governance>"
  estimated_time: "<15-25 min>"
  prerequisites:
    - "<Copilot Studio trial, Microsoft 365 tenant, Power Platform Developer environment>"
    - "<Required tools (Power Platform CLI, VS Code Copilot Studio extension)>"
  starting_state:
    - "<What must already exist>"
  tasks:
    - name: "<Task 1 name>"
      steps: |
        <Numbered steps when sequencing matters. Use exact UI labels or exact commands.>
      validation:
        - "<Validation command and what success looks like>"
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
      <Exact resource, solution, or environment deletion or rollback steps>
    validation:
      - "<Check that resources are gone>"
  references:
    - "<Microsoft Learn URL or URLs>"
```

## Delivery rules

Labs are delivered in full (all sections in a single message). Unlike practice questions, there is no interactive hold-back. If multiple labs are requested, deliver each lab sequentially in the same message.

## Quality checklist

- Single objective, single outcome.
- Every task has an explicit validation gate.
- Cleanup is complete and safe.
- Instructions use Microsoft formatting rules for UI labels and commands.
- All product names use current terminology (rename table above).
- No contractions.
- Fictional company is randomized and uses the full WWL-approved name (not always Contoso, Ltd.).
- Resource names follow Server1/Computer1/App1 patterns; people are *the user* or User1/User2.
- Lab category is one of agent-authoring, design-walkthrough, alm, or responsible-ai-governance.

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
4. Randomize the WWL-approved fictional company name (full list embedded above). Use the full company name on every mention.
```
