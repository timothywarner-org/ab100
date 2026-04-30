---
name: ab100-quiz
description: "Quiz me on AB-100 with one exam-realistic question."
argument-hint: "domain='design' bloom='Apply' difficulty='medium'"
agent: ab100-cert-buddy-agent
tools:
  - ab100buddy-mslearn/*
---

# AB-100 Quiz

Generate **ONE** original AB-100 practice question.

Use the **ab100-item-creator** skill for structure, WWL style, randomization, and the Phase 1 / Phase 2 interactive flow.

## Inputs

- Domain: ${input:domain:Plan | Design | Deploy (blank = agent picks)}
- Objective: ${input:objective:specific objective line (optional)}
- Bloom: ${input:bloom:Remember | Understand | Apply | Analyze | Evaluate}
- Difficulty: ${input:difficulty:easy | medium | hard}

## Reminders

- Phase 1: stem + choices only, then stop and wait.
- Phase 2 (after the user answers): result, 2-sentence rationale per choice, Microsoft Learn URLs.
- Randomize the correct letter and the WWL-approved fictional company.
