# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A Markdown-only teaching/learning repository for Tim Warner's O'Reilly Live Training course **"Agentic AI Business Solutions Architect"** and the companion Microsoft **AB-100** certification study guide. There is **no application code, no build system, and no test suite** — the deliverable is prose, tables, and structured study material. Do not add `package.json`, linters, CI, or tooling unless the user explicitly asks.

## Repository architecture

Content is organized around two parallel hierarchies that intentionally cross-reference each other:

1. **Exam-objective hierarchy** (`01-plan-ai-solutions/`, `02-design-ai-solutions/`, `03-deploy-ai-solutions/`) — mirrors the three AB-100 skill domains and their official weightings (25-30% / 25-30% / 40-45%). Each domain directory has a `README.md` overview plus topic files named after the exam sub-objectives.
2. **Course-delivery hierarchy** (`course/`) — four 50-minute segments (`segment1`–`segment4`) that map onto the exam domains. Every segment has three parallel files across `course/demos/`, `course/exercises/`, and `course/slides/`. The canonical plan lives in `course/COURSE_PLAN.md`.

Supporting material sits in `resources/` (`links.md`, `cheat-sheet.md`, `glossary.md`) and `practice/scenarios.md`. The root `README.md` is the navigation hub and its structure diagram is the source of truth for what exists — keep it in sync when adding or moving files.

When editing one hierarchy, check the other. A new concept added to a `0X-*/` domain file usually needs a matching reference in the relevant `course/segmentN-*.md` trio, and vice versa. Exam weightings appear in multiple places (root README, domain READMEs, course README, COURSE_PLAN) — change them everywhere or nowhere.

## Content conventions

- **Segment numbering** is 1-indexed (`segment1` … `segment4`); **domain numbering** is zero-padded (`01-plan-ai-solutions`). Follow the existing pattern when adding siblings.
- Domain and segment files lean heavily on Markdown tables for comparisons (exam weights, technology matrices, build-vs-buy). Prefer tables over bullet lists when presenting parallel items — it matches the house style.
- Microsoft product names must be exact: *Microsoft 365 Copilot*, *Copilot Studio*, *Azure AI Foundry*, *Azure OpenAI*, *Dynamics 365* (with the space). Protocol names are **MCP** (Model Context Protocol) and **A2A** (Agent2Agent).
- This is an **unofficial** study guide (see the disclaimer in `README.md`). Do not claim Microsoft endorsement, and link to `https://learn.microsoft.com/credentials/certifications/exams/ab-100/` as the authoritative source.
- Course metadata (duration, segment count, instructor, publisher) is canonical in `course/COURSE_PLAN.md`. When it conflicts with anything else, `COURSE_PLAN.md` wins.

## Working in this repo

- There is nothing to build, lint, or test. "Done" means the Markdown renders correctly on GitHub and internal links resolve.
- When adding a new file, update the tree diagram in the root `README.md` and the nearest parent `README.md` index so readers can find it.
- When renaming or moving files, grep for the old path across `*.md` before committing — cross-references are plentiful and easy to miss.
