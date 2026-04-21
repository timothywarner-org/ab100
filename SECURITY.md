# Security Policy

## Scope

This repository contains GitHub Copilot agent definitions, skill specifications, prompt templates, MCP server configurations, and course scaffolding for Microsoft exam **AB-100: Agentic AI Business Solutions Architect** certification study and Tim Warner's O'Reilly Live Learning course. It does not contain application code, backend services, or deployable software.

The MCP server configuration in `.vscode/mcp.json` points to the public Microsoft Learn MCP endpoint (no API key, no sign-up). No secrets are hardcoded in any tracked file. The `.gitignore` file excludes `.env` files, private keys, and other sensitive material from version control.

## Reporting a vulnerability

If you discover a security issue in this repository, please report it by email:

- **To:** <tim@techtrainertim.com>
- **Subject line:** Security: ab100-cert-buddy
- **Include:** A clear description of the issue, the affected file(s), and steps to reproduce the problem if applicable.

You can expect an initial response within 48 hours.

## What counts as a security issue

The following are considered security issues and should be reported through the process described above:

- **Hardcoded secrets or API keys** in any tracked file (agent definitions, skill specs, MCP configs, prompt templates, or reference documents).
- **MCP server configurations that could leak credentials**, such as configs that write secrets to logs, pass them as visible command-line arguments, or store them in plaintext outside of VS Code secure input prompts.
- **Prompt injection vulnerabilities** in agent or skill definitions that could cause the agent to bypass its safety rules, exfiltrate context, or execute unintended actions.
- **References to real exam content** that compromise the integrity of the Microsoft AB-100 certification exam. This repository must contain only original practice material.

## What is NOT a security issue

The following should be reported through regular GitHub Issues rather than the security reporting process:

- Feature requests or suggestions for new content.
- Outdated Microsoft terminology or product name changes.
- General documentation improvements.
- Drift between `references/ab100-objectives.md` and the live Microsoft Learn study guide.

## Responsible disclosure

Please do not publicly disclose a security issue until it has been reviewed and addressed. If you have reported a vulnerability and have not received a response within 48 hours, you may send a follow-up email to the same address.

## Maintainer

- **Name:** Tim Warner
- **Email:** <tim@techtrainertim.com>
- **Website:** <https://TechTrainerTim.com>
