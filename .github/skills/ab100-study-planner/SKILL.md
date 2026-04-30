---
name: ab100-study-planner
description: Generates a personalized AB-100 study plan based on the user's self-assessed confidence across the three AB-100 domains, prioritizing weak areas with estimated hours and Microsoft Learn module links. Use when the user asks for a study plan, is unsure what to study, or wants exam prep guidance.
---

# Skill: ab100.study_planner.personalized

**Description:** Generates a personalized AB-100 study plan based on the user's self-assessed confidence across exam domains, prioritizing weak areas with estimated hours and Microsoft Learn module links.

## Grounding

**Required sources:**

- `docs/ab100-exam-objectives.md` (canonical AB-100 skills measured, synced verbatim from the Microsoft Learn study guide)
- Microsoft Learn (access via the **Microsoft Learn MCP server** using `microsoft_docs_search` for current Learn module URLs)
- Use `microsoft_docs_fetch` to verify Learn module links are current and active

## Workflow

1. **Present domains with weights.** Show the three AB-100 domains and their exam weight percentages:

   | Domain | Exam Weight |
   | --- | --- |
   | Plan AI-powered business solutions | 25-30% |
   | Design AI-powered business solutions | 25-30% |
   | Deploy AI-powered business solutions | 40-45% |

2. **Offer optional finer-grained confidence ratings.** The Deploy domain carries the most weight and has four subdomains. If the user wants a more targeted plan, offer to rate each subdomain separately:

   **Plan subdomains:**
   - Analyze requirements for AI-powered business solutions
   - Design overall AI strategy for business solutions
   - Evaluate costs and benefits (ROI)

   **Design subdomains:**
   - Design AI and agents for business solutions
   - Design extensibility of AI solutions
   - Orchestrate configuration for prebuilt agents and apps

   **Deploy subdomains:**
   - Analyze, monitor, and tune AI-powered business solutions
   - Manage the testing of AI-powered business solutions
   - Design the ALM process for AI-powered business solutions
   - Design responsible AI, security, governance, risk management, and compliance

3. **Ask for confidence ratings.** Ask the user to rate their confidence in each area using one of these levels:
   - **Strong** -- comfortable with most objectives; needs only light review.
   - **Moderate** -- familiar with the concepts but needs targeted practice.
   - **Weak** -- limited experience; needs focused study.
   - **Unknown** -- not sure; treat as weak.

4. **Generate a prioritized study plan.** Based on the user's ratings:
   - Order areas from weakest to strongest.
   - Within equal confidence levels, prioritize areas with higher exam weight (Deploy first, then Plan / Design).
   - For each area, provide:
     - Estimated study hours (weak: 10-14 hours, moderate: 5-7 hours, strong: 2-3 hours).
     - Two to three specific Microsoft Learn module links (grounded via Microsoft Learn MCP server; do not invent URLs).
     - Key objectives to focus on (from `docs/ab100-exam-objectives.md`).
   - Include a total estimated hours range at the bottom.

5. **Call out prerequisite gaps.** AB-100 requires at least one qualifying associate-level certification (the full prerequisite list is in `docs/ab100-exam-objectives.md` and on the Microsoft Learn certification page). If the user mentions they lack any prerequisite, recommend the quickest path (typically AI-102 for engineers, PL-400 or PL-600 for Power Platform professionals, or MB-910 + MB-920 study paths for Dynamics 365 paths) before scheduling AB-100.

6. **Offer to start practicing.** After presenting the plan, ask: "Would you like to start with practice questions or a hands-on lab on **[first recommended topic]**?"

## Output format

```markdown
## Your Personalized AB-100 Study Plan

### Priority 1: [Domain or Subdomain Name] (exam weight: XX-XX%)

**Your confidence:** [rating]
**Estimated study time:** X-X hours

**Focus objectives:**
- [Objective 1]
- [Objective 2]
- [Objective 3]

**Recommended Microsoft Learn modules:**
- [Module title](URL)
- [Module title](URL)

---

### Priority 2: [Domain or Subdomain Name] (exam weight: XX-XX%)

... (repeat for each area)

---

**Total estimated study time:** XX-XX hours

**Prerequisite check:** AB-100 requires one of the qualifying associate-level certifications listed in `docs/ab100-exam-objectives.md`. Confirmed? (yes / no / not sure)

Ready to start? I can generate practice questions or a hands-on lab on **[first recommended topic]**.
```

## Style

Plan prose follows the **Microsoft Writing Style Guide** (MWSG): warm, scannable, present-tense, sentence-style capitalization, Oxford commas, plain ASCII (no curly quotes, no en or em dashes -- use `--` and `->`). Override one MWSG convention: **no contractions** (the same rule the **Microsoft Worldwide Learning Exam Writing Style Guide** applies to exam items). When a plan mentions a fictional company in an example, draw from the WWL-approved list and use the full company name (a few common picks: A. Datum Corporation, Adventure Works Cycles, Blue Yonder Airlines, Contoso, Ltd., Fabrikam, Inc., Litware, Inc., Northwind Traders, Tailspin Toys, Wide World Importers, Woodgrove Bank). Always use current Microsoft product names; never use retired or legacy names.

## Guardrails

- Do not skip any of the three domains. Even strong areas appear in the plan with a light review recommendation.
- Do not invent Microsoft Learn module URLs. Use the Microsoft Learn MCP server (`microsoft_docs_search`) to find real, current module links.
- Treat unknown confidence the same as weak.
- Always use current Microsoft product names (the `ab100-cert-buddy-agent` agent and the `ab100-item-creator` skill carry the full retired-to-current rename table; never use *Azure AD*, *Power Virtual Agents*, *Azure AI Studio*, *Dataverse for Teams*, or other legacy names).
- No contractions.
- AB-100 is an expert-level exam with prerequisites. Always surface the prerequisite reminder in the final plan.

## Delivery rules

Deliver the full study plan in a single message after the user provides their confidence ratings. Do not split the plan across multiple messages.
