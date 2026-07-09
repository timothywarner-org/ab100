# AB-100 References -- Verified Canonical Links

> Exam **AB-100: Agentic AI Business Solutions Architect**.
> Every URL below was fetched and confirmed live. Nothing here is guessed.
>
> **Last verified:** 2026-07-09
> **Skills measured as of:** 2026-07-22 (per the official study guide)

This file is the short, high-trust link index. For the long-form curated list with
commentary, community content, and the honest gap analysis, see
[`docs/ab100-study-resources.md`](./docs/ab100-study-resources.md).

## Verification method

Links were verified with the Microsoft Learn MCP server (`microsoft_docs_search`,
`microsoft_docs_fetch`) and direct HTTP resolution. A link earns **VERIFIED** only when a
fetch returned real, on-topic content and the page title or H1 matched the claim. Anything
that could not be confirmed is listed under [Searched but unverified](#searched-but-unverified)
rather than being quietly dropped or invented.

Every URL in this file resolves HTTP 200 and is its own canonical target, with two deliberate
exceptions that a link checker will flag as redirects and should not be "fixed":

- `aka.ms/AB100-StudyGuide` redirects to the study guide. That is the point of a short link.
- `microsoft.onhgcloud.com/` redirects to its portal entry page.

Two further conventions matter for the CI link checker:

- The certification and renewal pages canonicalize **with** a trailing slash.
- The study guide canonicalizes **without** a trailing slash.

Match those exactly so the checker does not chase redirect hops. Microsoft Learn rate-limits
aggressive checkers and will return connection errors that look like dead links. Retry before
believing a failure.

---

## 1. AB-100 certification, exam, and study guide

| Resource | URL | Notes |
| --- | --- | --- |
| Certification overview | <https://learn.microsoft.com/en-us/credentials/certifications/agentic-ai-business-solutions-architect/> | Canonical landing page. Prerequisites, renewal, exam policy. |
| Study guide (skills measured) | <https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/ab-100> | **Canonical source of truth** for domains, weights, and change log. |
| Study guide short link | <https://aka.ms/AB100-StudyGuide> | Microsoft's own 301 to the study guide. Safe to hand out verbally. |
| Free practice assessment | <https://learn.microsoft.com/en-us/credentials/certifications/agentic-ai-business-solutions-architect/practice/assessment> | First-party, free, unlimited attempts. Assessment ID `1815645847`. |
| Certification renewal (AB-100) | <https://learn.microsoft.com/en-us/credentials/certifications/agentic-ai-business-solutions-architect/renew/> | AB-100-specific renewal assessment. |
| Browse all credentials | <https://learn.microsoft.com/en-us/credentials/browse/> | Filter query strings are client-side. Cite the bare URL. |
| Microsoft Credentials home | <https://learn.microsoft.com/en-us/credentials/> | Program home. |

### Exam facts (verified against the study guide and certification page)

| Item | Value |
| --- | --- |
| Domain 1 -- Plan AI-powered business solutions | 25-30% |
| Domain 2 -- Design AI-powered business solutions | 25-30% |
| Domain 3 -- Deploy AI-powered business solutions | 40-45% |
| Passing score | 700 of 1000 |
| Exam duration | 100 minutes |
| Level | Advanced (Expert) |
| Renewal frequency | 12 months, free online assessment |
| Availability | Generally available, not beta |
| Prerequisite | At least one qualifying associate-level certification |

**Do not link `.../credentials/certifications/exams/ab-100/`.** It resolves HTTP 301 to the
certification overview page above. It is a redirect target, not a canonical page. The one
exception is the anchor `.../exams/AB-100#two-ways-to-prepare`, which the study guide itself
uses as a deep link.

**There is no AB-100 Skills Measured PDF.** Microsoft publishes the skills-measured content
only as the HTML study guide. Anyone offering you a "skills measured PDF" is offering you
something Microsoft did not publish.

---

## 2. Para-exam: registration, policy, and offers

### Pearson VUE

| Resource | URL | Notes |
| --- | --- | --- |
| Microsoft program landing page | <https://www.pearsonvue.com/us/en/microsoft.html> | The reliable entry point. Hosts scheduling, contact, OnVUE, and test-center links. |
| OnVUE online proctored exams | <https://www.pearsonvue.com/us/en/microsoft/onvue.html> | Requirements, minimum specs, and the system-test launcher. Run the system test **before** exam day. |
| Accommodations request system | <https://microsoft.onhgcloud.com/> | Pearson VUE Reasonable Adjustment Request System for Microsoft. |

Pearson VUE moved these paths from `home.pearsonvue.com` to `www.pearsonvue.com` once
already. Expect drift and re-verify before each delivery.

### Microsoft certification policy and support

| Resource | URL |
| --- | --- |
| Register and schedule an exam | <https://learn.microsoft.com/en-us/credentials/certifications/register-schedule-exam> |
| Exam policies and FAQs (hub) | <https://learn.microsoft.com/en-us/credentials/certifications/certification-exam-policies> |
| Exam Candidate Agreement | <https://learn.microsoft.com/en-us/credentials/support/certification-exam-candidate-agreement> |
| Retake policy | <https://learn.microsoft.com/en-us/credentials/support/retake-policy> |
| Certification renewal (how it works) | <https://learn.microsoft.com/en-us/credentials/certifications/renew-your-microsoft-certification> |
| Renewal FAQ | <https://learn.microsoft.com/en-us/credentials/certifications/renew-your-microsoft-certification-faq> |
| Credentials Program Agreement | <https://learn.microsoft.com/en-us/credentials/support/credential-program-agreement> |
| Credentials support hub | <https://learn.microsoft.com/en-us/credentials/support/help> |
| Exam duration and exam experience | <https://learn.microsoft.com/en-us/credentials/support/exam-duration-exam-experience> |
| Online proctored exam FAQ | <https://learn.microsoft.com/en-us/credentials/support/frequently-asked-questions-about-online-proctored-exams> |
| Request exam accommodations | <https://learn.microsoft.com/en-us/credentials/certifications/request-accommodations> |
| Available accommodations and documentation | <https://learn.microsoft.com/en-us/credentials/certifications/available-exam-accommodations-document-requirements> |
| Manage certification profile | <https://learn.microsoft.com/en-us/credentials/support/cred-overview> |
| Exam sandbox (try the interface) | <https://mscertdemo.starttest.com/> |

### Microsoft offers and pricing

| Resource | URL | Notes |
| --- | --- | --- |
| Certification FAQ (includes pricing) | <https://learn.microsoft.com/en-us/credentials/certifications/frequently-asked-questions> | Associate and Expert exams typically 165 USD. Regional pricing varies. |
| Offers, including Exam Replay | <https://learn.microsoft.com/en-us/credentials/certifications/deals> | Exam Replay bundles a retake voucher. |
| Student discounts | <https://learn.microsoft.com/en-us/credentials/certifications/student-discounts> | Academic pricing, requires verification. |
| Free practice assessments hub | <https://learn.microsoft.com/en-us/credentials/certifications/practice-assessments-for-microsoft-certifications> | AB-100 is listed. Free, first-party. |

---

## 3. Microsoft Learn free training

### Primary learning path

The published display title is **"Architect AI solutions for business productivity"**, even
though the URL slug reads `architect-agentic-ai-business-solutions`. Cite the title as
Microsoft publishes it.

<https://learn.microsoft.com/en-us/training/paths/architect-agentic-ai-business-solutions/>

| # | Module | URL |
| --- | --- | --- |
| 01 | Introduction to agentic AI business solutions | <https://learn.microsoft.com/en-us/training/modules/introduction-agentic-ai-business-solution-architecture/> |
| 02 | Analyze requirements for AI-powered business solutions | <https://learn.microsoft.com/en-us/training/modules/analyze-requirements-ai-powered-business-solutions/> |
| 03 | Design overall AI strategy for business solutions | <https://learn.microsoft.com/en-us/training/modules/design-overall-ai-strategy-business-solutions/> |
| 04 | Evaluate costs and benefits of AI solutions | <https://learn.microsoft.com/en-us/training/modules/evaluate-costs-benefits-ai-powered-business-solution/> |
| 05 | Design AI agents for business solutions | <https://learn.microsoft.com/en-us/training/modules/design-ai-agents-business-solutions/> |
| 06 | Design extensibility of AI solutions | <https://learn.microsoft.com/en-us/training/modules/design-extensibility-ai-solutions/> |
| 07 | Orchestrate configuration of prebuilt agents and apps | <https://learn.microsoft.com/en-us/training/modules/orchestrate-configuration-prebuilt-agents-apps/> |
| 08 | Monitor, analyze, and tune AI agents | <https://learn.microsoft.com/en-us/training/modules/analyze-monitor-tune-ai-powered-business-solutions/> |
| 09 | Manage testing AI-powered business solutions | <https://learn.microsoft.com/en-us/training/modules/manage-testing-ai-powered-business-solutions/> |
| 10 | Design ALM process for AI-powered business solutions | <https://learn.microsoft.com/en-us/training/modules/design-alm-process-ai-powered-business-solutions/> |
| 11 | Design responsible AI security, governance, risk management, and compliance | <https://learn.microsoft.com/en-us/training/modules/design-responsible-ai-security-governance-risk-management-compliance/> |

Modules 01 through 11 map one-to-one onto the local mirror in
[`docs/learning-paths/architect-agentic-ai/`](./docs/learning-paths/architect-agentic-ai/).

### Instructor-led course

| Resource | URL | Notes |
| --- | --- | --- |
| AB-100T00-A -- Architecting agentic AI business solutions | <https://learn.microsoft.com/en-us/training/courses/ab-100t00> | Three days. Microsoft states this is **not** a test-prep course. |

### Adjacent free paths worth assigning

| Path | URL | Why it matters |
| --- | --- | --- |
| Create agents in Microsoft Copilot Studio | <https://learn.microsoft.com/en-us/training/paths/create-extend-custom-copilots-microsoft-copilot-studio/> | Nine modules. The single best Copilot Studio path for Design and Deploy. |
| Build a foundation to build AI agents and extend Microsoft 365 Copilot | <https://learn.microsoft.com/en-us/training/paths/build-foundation-extend-microsoft-365-copilot/> | The build, buy, or extend decision. |
| Develop AI agents on Azure | <https://learn.microsoft.com/en-us/training/paths/develop-ai-agents-azure/> | Foundry Agent Service, multi-agent orchestration, MCP tools. |
| Develop generative AI apps in Azure | <https://learn.microsoft.com/en-us/training/paths/develop-generative-ai-apps/> | Model catalog, grounding, evaluation. |
| Operationalize AI responsibly with Microsoft Foundry | <https://learn.microsoft.com/en-us/training/paths/operationalize-ai-responsibly/> | Hour 4 governance content. |
| Cloud Adoption Framework for Azure (module) | <https://learn.microsoft.com/en-us/training/modules/cloud-adoption-framework/> | The Plan domain names CAF AI adoption explicitly. Microsoft now serves this as a module, not a path. |

### Framework documentation (no Learn path exists for these)

| Resource | URL |
| --- | --- |
| Cloud Adoption Framework -- AI adoption strategy | <https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ai/strategy> |
| Cloud Adoption Framework -- AI agents | <https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ai-agents/> |
| Microsoft Power Platform Well-Architected | <https://learn.microsoft.com/en-us/power-platform/well-architected/> |

The study guide requires applying the Power Platform Well-Architected Framework, but
Microsoft ships it as documentation only. There is no self-paced Learn path for it.

---

## 4. Practice tests

| Resource | URL | Cost | Standing |
| --- | --- | --- | --- |
| Microsoft Learn AB-100 practice assessment | <https://learn.microsoft.com/en-us/credentials/certifications/agentic-ai-business-solutions-architect/practice/assessment> | Free | **Official, first-party.** Start here. |
| MeasureUp AB-100 practice test | <https://www.measureup.com/microsoft-ab-100-agentic-ai-business-solutions-architect-practice-test.html> | 99 USD | Certified partner. 102 questions, released March 2026. |
| mindhub Pro (MeasureUp reseller) | <https://www.mindhubpro.com/microsoft-practice-test-ab-100-agentic-ai-business-solutions-architect/p/MU180-AB-100> | 99 USD | Same MeasureUp product, SKU `MU180-AB-100`. |

Two things to get right when you talk about these in class.

**Lead with the free one.** Microsoft's first-party practice assessment is authored by the
same team that develops the certification exams, gives per-question rationale, and allows
unlimited attempts. The hub page discloses that these assessments are authored with AI
assistance.

**MeasureUp is no longer "the Microsoft Official Practice Test."** That label is retired.
MeasureUp now self-describes as a **Microsoft Certified Practice Test Provider** and a
Microsoft Solutions Partner. Use that phrasing. Repeating the old label is a factual error
that a sharp learner will catch.

Third-party practice tests on Udemy and similar sites exist for AB-100. They are
**unofficial**, crowd-authored, carry no Microsoft validation, and may not track the
July 22, 2026 objectives. Treat them as drill volume, never as a source of truth. This
repository does not link exam-dump sites.

---

## 5. Cert Buddy and companion repositories

The AB-100 Cert Buddy is one instance of a pattern Tim Warner reuses across exams: a
Copilot or Claude Code agent, a set of auto-discovered skills, and grounding through the
Microsoft Learn MCP server.

| Repository | URL | What it is |
| --- | --- | --- |
| **ab100** (this repo) | <https://github.com/timothywarner-org/ab100> | AB-100 course scaffolding, Cert Buddy agent, and the Hour 3 Foundry-plus-MCP-plus-ACA-plus-APIM POC stack. |
| ai901-cert-buddy-claude | <https://github.com/timothywarner-org/ai901-cert-buddy-claude> | AI-901 study buddy built natively for Claude Code. Subagents, skills, slash commands, hook guardrails. |
| az104-cert-buddy | <https://github.com/timothywarner-org/az104-cert-buddy> | AZ-104 study buddy on GitHub Copilot agents. Practice questions plus self-validating Azure portal labs. |
| copilot-cert-prep | <https://github.com/timothywarner-org/copilot-cert-prep> | GitHub Copilot certification exam preparation. |

### Related exam and course repositories

| Repository | URL | Exam or topic |
| --- | --- | --- |
| ai901 | <https://github.com/timothywarner-org/ai901> | AI-901 Azure AI Fundamentals teaching laboratory. |
| ai103 | <https://github.com/timothywarner-org/ai103> | AI-103 Developing AI Apps and Agents on Azure. |
| sc500 | <https://github.com/timothywarner-org/sc500> | SC-500 Cloud and AI Security Engineer Associate. |
| claude-architect | <https://github.com/timothywarner-org/claude-architect> | Anthropic Claude Certified Architect: Foundations (CCA-F). |
| context-engineering | <https://github.com/timothywarner-org/context-engineering> | MCP, hybrid RAG, and the WARNERCO Schematica teaching app. |
| mcp-teaching-kit | <https://github.com/timothywarner-org/mcp-teaching-kit> | All six MCP primitives wired to Claude. |

### Instructor

| Resource | URL |
| --- | --- |
| Tim Warner on GitHub | <https://github.com/timothywarner> |
| timothywarner-org | <https://github.com/timothywarner-org> |

---

## Searched but unverified

Honesty section. These were pursued and could not be confirmed, so they are recorded here
rather than presented as facts.

| Item | Finding |
| --- | --- |
| Standalone AB-100 exam detail page | Does not exist. `.../exams/ab-100/` returns HTTP 301 to the certification overview page. |
| AB-100 Skills Measured PDF | Does not exist. The HTML study guide is the only published form. |
| OnVUE system test direct link | **Removed.** Microsoft Learn still cites `service.proctorcam.com/system_test`, but that hostname no longer resolves in DNS. Reach the system test from the OnVUE page instead. |
| Pearson VUE public test-center locator | No unauthenticated deep link. Four candidate URLs returned 404. Test-center proximity search lives behind the Microsoft-authenticated Pearson VUE flow. Use the "Find a test center" link on the Microsoft landing page. |
| Pearson VUE direct registration deep link | No clean unauthenticated URL by design. Registration routes through the Microsoft Learn certification page into the authenticated Pearson VUE flow. |
| AB-100 Microsoft Learn Plan, Challenge, or Collection | None published. |
| Power Platform Well-Architected training path | No Learn path exists. Documentation only. |
| Cloud Adoption Framework AI adoption training path | No dedicated Learn path. Documentation only. The `cloud-adoption-framework` training URL now resolves to a single **module**, not a path. |
| cert-mentor repository | Exists but is **private**. Deliberately omitted from the public tables above. |
| ai901-demo-harness repository | Exists but is **private**. It returns HTTP 404 to anonymous visitors, so it is omitted from the public tables above. |

---

## Maintenance

Re-verify this file before every course delivery and whenever Microsoft updates the study
guide. The failure mode is silent: a link keeps returning HTTP 200 while quietly redirecting
somewhere useless, or Pearson VUE reorganizes its site again.

Two checks worth running:

```powershell
# Resolve every link in this file and report its final URL and status code
Select-String -Path REFERENCES.md -Pattern '<(https?://[^>]+)>' -AllMatches | ForEach-Object { $_.Matches } | ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique | ForEach-Object { $u = $_; try { $r = Invoke-WebRequest -Uri $u -MaximumRedirection 5 -SkipHttpErrorCheck -TimeoutSec 20; [PSCustomObject]@{ Status = $r.StatusCode; Final = $r.BaseResponse.RequestMessage.RequestUri; Source = $u } } catch { [PSCustomObject]@{ Status = 'ERR'; Final = $_.Exception.Message; Source = $u } } } | Format-Table -AutoSize
```

```powershell
# Repository-wide Markdown link check, matching the CI workflow
npx markdown-link-check --config .github/workflows/mlc-config.json REFERENCES.md
```

When Microsoft revises the study guide, re-sync
[`docs/ab100-exam-objectives.md`](./docs/ab100-exam-objectives.md) word for word, update the
"Skills measured as of" date at the top of this file, and record the change in that file's
change log in the same pull request.
