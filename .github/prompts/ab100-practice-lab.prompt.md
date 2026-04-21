---
name: ab100-practice-lab
description: "Build a hands-on AB-100 lab with validation and cleanup."
argument-hint: "domain='design' category='agent-authoring' toolPreference='Copilot Studio YAML' timebox='20'"
agent: ab100-cert-buddy-agent
tools:
  - ab100buddy-mslearn/*
---

# AB-100 Practice Lab

Generate **ONE** short, self-validating **AB-100** practice lab.

## Use this skill

You must follow the workspace skill **ab100-lab-creator** for lab structure, guardrails, workflow, output format, and **delivery rules** (full lab in a single message).

## Inputs (from chat)

- Domain: ${input:domain:Plan | Design | Deploy (or leave blank and the agent picks one)}
- Objective: ${input:objective:Specific objective to practice (optional)}
- Category: ${input:category:agent-authoring | design-walkthrough | alm | responsible-ai-governance}
- Tool preference: ${input:toolPreference:Copilot Studio Portal | Copilot Studio YAML | Microsoft Foundry Portal | Power Platform CLI (default Copilot Studio YAML)}
- Timebox: ${input:timebox:Duration in minutes (default 20)}

## Grounding and validation rules

1. Ground the lab outcome in **Microsoft Learn** using the **Microsoft Learn MCP** server.
2. If the lab includes Copilot Studio YAML, Power Platform CLI, Microsoft Foundry SDK, or Bicep syntax, confirm with `microsoft_code_sample_search`.
3. Provide **Microsoft Learn URLs** in the References section.

## Key rules

- Randomize the fictional company name from `references/fictional-companies.md`.
- Follow all style rules from `references/style-guide.md`.
- Default to **Copilot Studio YAML** for authoring labs, **Power Platform CLI** for ALM labs, **Microsoft Foundry Portal** for Foundry-specific labs if no tool preference is specified.
- All product names must use current terminology (no retired or legacy names).
- No contractions. Cleanup is mandatory.

## Output format

Use the YAML output format defined in the **ab100-lab-creator** skill exactly. The output must include: title, objective, domain, subdomain, category, estimated_time, prerequisites, starting_state, tasks (each with steps and validation), troubleshooting, cleanup (with validation), and references.
