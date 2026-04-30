---
name: ab100-plan
description: "Create a personalized AB-100 study plan from your confidence ratings."
argument-hint: "plan='Weak' design='Moderate' deploy='Weak'"
agent: ab100-cert-buddy-agent
tools:
  - ab100buddy-mslearn/*
---

# AB-100 Plan

Generate a personalized AB-100 study plan, prioritized weakest first, with Microsoft Learn module links.

Use the **ab100-study-planner** skill for workflow, output format, and delivery rules (full plan in a single message).

## Inputs

- Plan confidence: ${input:plan:Strong | Moderate | Weak | Unknown}
- Design confidence: ${input:design:Strong | Moderate | Weak | Unknown}
- Deploy confidence: ${input:deploy:Strong | Moderate | Weak | Unknown}
- Optional exam date: ${input:examDate:YYYY-MM-DD (blank if none)}
- Optional weekly hours: ${input:weeklyHours:e.g., 5}

## Reminders

- Treat Unknown as Weak. Cover all three domains.
- Within equal confidence levels, sort by weight (Deploy 40-45% first).
- If exam date and weekly hours are both provided, include a feasibility check.
- Surface the AB-100 prerequisite reminder.
- Do not invent Learn URLs.
