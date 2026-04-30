---
name: ab100-lab
description: "Build one short AB-100 lab with validation and cleanup."
argument-hint: "domain='design' category='agent-authoring' toolPreference='Copilot Studio YAML' timebox='20'"
agent: ab100-cert-buddy-agent
tools:
  - ab100buddy-mslearn/*
---

# AB-100 Lab

Generate **ONE** short AB-100 lab (15-25 minutes), self-validating, with cleanup.

Use the **ab100-lab-creator** skill for structure, WWL style, output format, and delivery rules (full lab in a single message).

## Inputs

- Domain: ${input:domain:Plan | Design | Deploy (blank = agent picks)}
- Objective: ${input:objective:specific objective (optional)}
- Category: ${input:category:agent-authoring | design-walkthrough | alm | responsible-ai-governance}
- Tool: ${input:toolPreference:Copilot Studio Portal | Copilot Studio YAML | Microsoft Foundry Portal | Power Platform CLI}
- Timebox: ${input:timebox:minutes (default 20)}

## Reminders

- Default tools when blank: Copilot Studio YAML for authoring, Power Platform CLI for ALM, Microsoft Foundry Portal for Foundry-specific.
- Randomize the WWL-approved fictional company; use the full name on every mention.
- Cleanup is mandatory.
