---
name: ab100-study-planner
description: "Create a personalized AB-100 study plan based on your confidence ratings."
argument-hint: "Rate your confidence: 'plan: Weak, design: Moderate, deploy: Weak'"
agent: ab100-cert-buddy-agent
tools:
  - ab100buddy-mslearn/*
---

# AB-100 Study Planner

Generate a **personalized AB-100 study plan** based on your confidence across the three exam domains.

## Use this skill

You must follow the workspace skill **ab100-study-planner** for workflow, output format, and **delivery rules** (full plan in a single message).

## Inputs (from chat)

- Plan AI-powered business solutions confidence: ${input:plan:Strong | Moderate | Weak | Unknown}
- Design AI-powered business solutions confidence: ${input:design:Strong | Moderate | Weak | Unknown}
- Deploy AI-powered business solutions confidence: ${input:deploy:Strong | Moderate | Weak | Unknown}
- Optional -- target exam date: ${input:examDate:YYYY-MM-DD (leave blank if unscheduled)}
- Optional -- weekly study hours available: ${input:weeklyHours:e.g., 5}

## Grounding and validation rules

1. Ground all Microsoft Learn module links using the **Microsoft Learn MCP** server. Do not invent Learn URLs.
2. Use the AB-100 exam skills outline from `references/ab100-objectives.md` for objective mapping.
3. Prioritize weak domains first. Within equal confidence levels, prioritize by exam weight (Deploy carries 40-45%, the highest).

## Key rules

- All product names must use current terminology (no retired or legacy names).
- No contractions.
- Do not skip any domain, even if rated Strong.
- Treat "Unknown" the same as "Weak."
- Always surface the AB-100 prerequisite reminder (one qualifying associate-level cert is required) in the final plan.
- If `weeklyHours` and `examDate` are both provided, include a feasibility check: compare estimated total hours against available hours, and flag if the plan will not fit.
