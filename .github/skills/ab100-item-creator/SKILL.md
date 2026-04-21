---
name: ab100-item-creator
description: Generate AB-100 practice questions that feel like the real exam without copying it. Every item is grounded in current Microsoft Learn content, uses modern Microsoft product names (Microsoft Foundry, Copilot Studio, Microsoft Entra ID), and follows Microsoft-style exam item rules (scenario-first, plausible distractors, no trick wording). Use when the user asks for practice questions, quiz items, or exam prep.
---

# Skill: ab100.practice_questions.exam_realistic

**Description:** Generate AB-100 practice questions that feel like the real exam without copying it. Every item is grounded in current Microsoft Learn content, uses modern Microsoft product names, and follows Microsoft-style exam item rules (scenario-first, plausible distractors, no trick wording).

## Grounding

**Required sources:**

- Microsoft Learn (primary truth source for objectives + features; access via the **Microsoft Learn MCP server** using `microsoft_docs_search` and `microsoft_docs_fetch`)
- Microsoft Learn code samples (for Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK accuracy; access via `microsoft_code_sample_search`)

**Study guide:**

- Study guide for Exam AB-100: Agentic AI Business Solutions Architect (skills outline + objective mapping) [Microsoft Learn]
- `references/ab100-objectives.md` for the full skills-measured list

## Style

**Microsoft style:**

- Follow Microsoft sentence-style capitalization and UI-label rules.
- See `references/style-guide.md` for detailed Microsoft writing style rules. Key rules for exam items:
  - Sentence-style capitalization everywhere except proper nouns and product names.
  - **Bold** for UI element names.
  - Input-neutral verbs: select (not click), enter (not type).
  - Imperative mood in procedure steps.
  - Oxford comma in all lists.
  - No contractions.
  - on-premises (never on-premise), cloud-native (hyphenated before a noun).
  - Spell out zero through nine; numerals for 10 or greater.
  - **should** for recommendations, **must** for requirements.

## Guardrails

**Exam integrity:**

- Do not recreate or paraphrase real exam questions.
- Do not reference braindumps or leaked content.
- Write original scenarios and original stems every time.

**Terminology:**

- Always use current Microsoft product names. Never use retired or legacy names such as "Azure AI Studio" (use "Microsoft Foundry"), "Power Virtual Agents" (use "Microsoft Copilot Studio"), "Azure AD" (use "Microsoft Entra ID"), and so on. See the full rename table in `.github/copilot-instructions.md`. If a distractor references identity, governance, or a Foundry capability, double-check that every product name is current.

**Item quality:**

- No contractions.
- Avoid negatives; if truly required, **CAP** + **bold** the negative word in the stem.
- Exactly 4 options (A-D) unless the requested item type explicitly differs.
- Exactly 1 correct answer unless the requested item type explicitly differs.
- No "all of the above", "none of the above", or subset answers (no overlap between choices).
- Distractors must be plausible and real (no fake agent types, fake Foundry tools, fake Copilot Studio node kinds, fake Dynamics 365 features).

## Answer choice randomization (non-negotiable)

You MUST randomize which letter (A, B, C, or D) is the correct answer for each question. Do not default to any single letter position. Across a set of questions, distribute the correct answer roughly evenly among A, B, C, and D. Before finalizing each question, deliberately vary the correct answer position.

## Fictional company randomization (non-negotiable)

Use fictional company names from `references/fictional-companies.md` for scenario context. You MUST randomize the company selection -- do not default to Contoso for every scenario. Draw from the full list of 50+ companies including Contoso, Fabrikam, Tailwind Traders, Northwind Traders, Litware, A. Datum, Woodgrove Bank, Trey Research, Coho Vineyard, AdventureWorks, Wide World Importers, Blue Yonder Airlines, Fourth Coffee, Humongous Insurance, Alpine Ski House, WingTip Toys, and others.

## Workflow

1. Pull current AB-100 domains from `references/ab100-objectives.md` and choose a target objective to measure.
2. Ground the intended correct behavior in Microsoft Learn using `microsoft_docs_search` first, then `microsoft_docs_fetch` if you need full page detail.
3. If the item touches Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK, or Dynamics 365 configuration specifics, invoke `microsoft_code_sample_search` to confirm syntax.
4. Pick a random fictional company from `references/fictional-companies.md` and draft a workplace scenario stem that forces a real architect decision (build vs buy vs extend, agent type selection, ALM boundary, governance control, responsible AI mitigation).
5. Randomly assign the correct answer to A, B, C, or D. Write 1 correct answer and 3 distractors based on common-but-wrong architecture assumptions.
6. Run a mutual exclusivity check on answer choices.
7. Run a terminology check: confirm every product name matches the current name (see rename table in copilot-instructions.md).
8. Run a candidate clarity check: single skill measured, no trivia, no hidden requirements.
9. Prepare rationale internally but **do not deliver it yet** (see delivery rules below).

## Invalid answer handling

When presenting questions interactively:

- **"hint"**: Provide a clue that eliminates one distractor. Re-present the question with all four choices still visible but the eliminated option noted.
- **"skip"** or **"I do not know"**: Immediately reveal the correct answer and full rationale (Phase 2), then move to the next question.
- **Unrecognized input**: Prompt the user: "Please reply with **A**, **B**, **C**, or **D**. You can also type **hint** for a clue or **skip** to see the answer."

## Progress tracking

When multiple questions are requested:

- Prefix each question with **"Question N of M"** (for example, "Question 3 of 10").
- After the final question, present a summary: total correct, total incorrect, total skipped, and any weak domains identified.

## Scenario-first stem guidance

The stem must open with a workplace scenario before asking the question. The scenario establishes context that makes the question feel like a real architect decision.

**Good example:**
> Tailwind Traders plans to extend Microsoft 365 Copilot with an agent that summarizes open service cases from Dynamics 365 Customer Service and proposes next actions. The solution must honor existing field-level security and must not replicate case data outside Dataverse. You need to recommend the agent design. What should you recommend?

**Bad example (no scenario):**
> Which agent pattern uses Dataverse as a knowledge source?

## Plausible distractor guidance

Distractors must reference real Microsoft services, agent patterns, Foundry tools, or Copilot Studio node kinds that are genuinely related to the topic but incorrect for the specific scenario.

**Good distractors** (real but wrong):

- A: "Build a declarative agent in Microsoft 365 Copilot with an OpenAPI-based plugin that calls the Dynamics 365 Web API." (Real pattern, but replicates data access rather than honoring existing Dataverse security.)
- B: "Create an autonomous agent in Copilot Studio that polls Dataverse on a recurring trigger." (Real pattern, but autonomous triggers are unnecessary for on-demand summarization and affect billing.)

**Bad distractors** (fake or implausible):

- A: "Use the **ai-summarizer** connector in Copilot Studio." (Fake connector -- no such built-in exists.)
- B: "Enable Foundry Autopilot mode on the agent." (Fake feature -- Foundry has no "Autopilot mode".)

## Delivery rules (non-negotiable)

When presenting a question to the user:

**Phase 1 -- Question only:**

- Show metadata, scenario stem, and choices (A-D).
- Do **NOT** include correct_answer, rationale, or references.
- End the message and wait for the user to reply.

**Phase 2 -- Evaluation:**

- After the user replies with their answer, show:
  - Whether they were correct or incorrect.
  - The correct answer letter.
  - Full rationale for every choice (see rationale depth below).
  - References (Microsoft Learn URLs).

If multiple questions were requested, repeat this Phase 1 / Phase 2 cycle for each question sequentially.

## Output format

**Phase 1 message (question only):**

- **metadata**
  - exam: AB-100
  - domain: "`<one of the three AB-100 domains>`"
  - objective: "`<specific objective line from references/ab100-objectives.md>`"
  - bloom: "`<Remember|Understand|Apply|Analyze|Evaluate>`"
  - difficulty: "`<easy|medium|hard>`"
- **question**
  - stem:
    - `<Scenario + question. Keep it tight. One problem. One decision.>`
  - choices:
    - A: "`<choice>`"
    - B: "`<choice>`"
    - C: "`<choice>`"
    - D: "`<choice>`"

*(Stop here. Wait for the user to answer.)*

**Phase 2 message (evaluation, after user replies):**

- **result:** "<Correct! / Incorrect.> The correct answer is <A|B|C|D>."
- **rationale:**
  - A: "<2-sentence explanation. Sentence 1: state whether correct or incorrect and why. Sentence 2: add context -- when this option would apply, the misconception it tests, or how it differs from the correct answer.>"
  - B: "<same 2-sentence format>"
  - C: "<same 2-sentence format>"
  - D: "<same 2-sentence format>"
- **references:**
  - "<Microsoft Learn URL 1>"
  - "<Microsoft Learn URL 2 if needed>"
- **quality_checklist:**
  - "Scenario is realistic for an agentic AI solution architect."
  - "Exactly one skill is being measured."
  - "Correct answer is unambiguously correct given Learn docs."
  - "Distractors are plausible, real, and unambiguously wrong."
  - "No contractions; minimal negatives; no trick phrasing."
  - "Choices are parallel in grammar and scope."
  - "At least one Microsoft Learn reference is included."
  - "All product names use current terminology (no retired or legacy names)."
  - "Each rationale entry is exactly 2 sentences."
  - "Correct answer position is randomized (not always A)."
  - "Fictional company is randomized (not always Contoso)."

---

## Prompt template

You are writing NEW AB-100 practice questions that feel exam-realistic without copying the exam.

**Inputs:**

- count: {{count}}
- domain: {{domain}} (or pick from the AB-100 study guide)
- bloom: {{bloom}}
- constraints: {{constraints}}

**Requirements:**

1. Ground every question in Microsoft Learn first using the Microsoft Learn MCP server.
2. Use `microsoft_code_sample_search` for Copilot Studio YAML, Foundry SDK, or Power Platform CLI accuracy when applicable.
3. Follow guardrails and output_format exactly.
4. Randomize the correct answer position across A, B, C, D.
5. Randomize the fictional company name from references/fictional-companies.md.

Deliver {{count}} items.
