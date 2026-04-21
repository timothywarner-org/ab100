# AB-100 Study Resources -- Curated

> Last synced: 2026-04-21
>
> Exam AB-100 (Agentic AI Business Solutions Architect) went to beta in October 2025,
> with general availability in January 2026. The list below is exhaustive as of the
> sync date. Because the certification is new, the public resource landscape is still
> thin outside Microsoft Learn and a handful of Microsoft MVP and Dynamics community
> posts. If a resource is not listed, it may not exist yet.
>
> All links in this file were verified by a live fetch at sync time. Obvious
> braindump and leaked-question sites are deliberately NOT linked -- see the
> warning in the "Practice tests" section.

## Official Microsoft resources

### Exam and certification pages

- [Exam AB-100: Agentic AI Business Solutions Architect (overview)](https://learn.microsoft.com/credentials/certifications/exams/ab-100) --
  exam details, languages, schedule button (Pearson VUE), exam sandbox, retake
  policy. 100 minutes, proctored, may include interactive components.
- [Study guide for Exam AB-100](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-100) --
  authoritative skills-measured outline with domain weights
  (Plan 25--30%, Design 25--30%, Deploy 40--45%) and the bulleted sub-skills
  under each domain. Short link: https://aka.ms/AB100-StudyGuide
- [Microsoft Certified: Agentic AI Business Solutions Architect (credential page)](https://learn.microsoft.com/credentials/certifications/agentic-ai-business-solutions-architect/) --
  audience profile, 12-month renewal cadence, and the 12 qualifying
  associate-level prerequisites (Dynamics 365 Business Central, Customer
  Experience Analyst, Customer Service, Field Service, Finance, Supply Chain
  Management, Finance and Operations Apps Developer, Power Platform Functional
  Consultant, Power Platform Developer, Power Automate RPA Developer, and
  Azure AI Engineer Associate).
- [Exam sandbox (demo the exam UI)](https://go.microsoft.com/fwlink/?linkid=2226877) --
  interactive preview of the Pearson VUE question formats (multiple choice,
  case study, drag-and-drop, hot area, scenario-based).
- [Exam scoring and score reports](https://learn.microsoft.com/credentials/certifications/exam-scoring-reports) --
  passing score is 700 / 1000; scoring is scaled.
- [Certification renewal (free Microsoft Learn assessment)](https://learn.microsoft.com/credentials/certifications/renew-your-microsoft-certification) --
  renew annually for free before expiry.
- [Exam Replay and discount offers](https://learn.microsoft.com/credentials/certifications/deals) --
  optional second-attempt package.
- [Certification poster (fundamentals to specialty)](https://arch-center.azureedge.net/Credentials/Certification-Poster_en-us.pdf) --
  where AB-100 sits in the broader credential map.

### Microsoft instructor-led training course (maps to AB-100)

- [Course AB-100T00-A: Architecting agentic AI business solutions](https://learn.microsoft.com/training/courses/ab-100t00) --
  3-day, advanced, instructor-led course released January 2026. Microsoft
  describes it as architectural preparation (trade-offs, governance,
  cost/benefit, ALM) rather than exam-focused test prep. Delivered through
  Microsoft Learning Partners.

### Microsoft Learn paths and modules (grouped by AB-100 domain)

Plan (AB-100 Domain 1, 25--30%):

- [AI adoption process -- Cloud Adoption Framework for Azure](https://learn.microsoft.com/azure/cloud-adoption-framework/scenarios/ai/) --
  study-guide explicitly requires "Implement the AI adoption process from the
  Cloud Adoption Framework for Azure".
- [AI agent adoption -- plan, govern, build, manage](https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/) --
  canonical Microsoft playbook for multi-agent adoption, including AI Center of
  Excellence guidance, data architecture, and organizational readiness.
- [Organizational readiness for AI agents (AI CoE)](https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/organization-people-readiness-plan) --
  Platform team, workload team, and AI CoE responsibilities. Directly aligns to
  the "Include the elements of the Microsoft AI Center of Excellence"
  objective.
- [MS-012: Explore the Microsoft approach to AI (Learning Path)](https://learn.microsoft.com/training/paths/explore-microsoft-approach-ai/) --
  Microsoft AI blueprint and Responsible AI Standard. Good orientation for
  Plan-domain reasoning.

Design (AB-100 Domain 2, 25--30%):

- [Solution Architect: Design Microsoft Power Platform solutions (Learning Path)](https://learn.microsoft.com/training/paths/solution-architect-data/) --
  12-module advanced path; covers Copilot Studio, data modeling, security
  modeling, analytics and AI, integrations, and ALM from a solution-architect
  lens.
- [Solution architect series: Explore Microsoft Copilot Studio (module)](https://learn.microsoft.com/training/modules/architect-power-virtual-agents/) --
  Architect-level module on Copilot Studio agent options and scenarios.
- [Architecting agent solutions: Principles and patterns](https://learn.microsoft.com/microsoft-copilot-studio/guidance/architecture/overview) --
  Microsoft's formal agent-architecture framework for Copilot Studio and
  Microsoft 365 Copilot. Read the whole /guidance/architecture tree.
- [Define your solution architecture (Copilot Studio)](https://learn.microsoft.com/microsoft-copilot-studio/guidance/architecture-overview) --
  Copilot Studio agent lifecycle, core capabilities, and technology
  architecture diagram.
- [Agent architecture components](https://learn.microsoft.com/microsoft-copilot-studio/guidance/architecture/components-of-agent-architecture) --
  Client, infrastructure, orchestrator, language model, catalog, tool calling,
  OpenAPI, semantic indexes, MCP servers, Responsible AI.
- [Copilot Studio reference architectures and solution ideas](https://learn.microsoft.com/power-platform/architecture/products/copilot-studio) --
  Reference architectures and scenario blueprints.
- [Add other agents overview (multi-agent patterns in Copilot Studio)](https://learn.microsoft.com/microsoft-copilot-studio/authoring-add-other-agents) --
  Child agents, A2A protocol agents, Microsoft Foundry agents (preview),
  Fabric Data agents (preview), and Microsoft 365 Agents SDK agents (preview).
- [Connect to a Microsoft Foundry agent (preview)](https://learn.microsoft.com/microsoft-copilot-studio/add-agent-foundry-agent) --
  End-to-end pattern for wiring a Foundry agent to a Copilot Studio agent.
- [Power Platform Well-Architected -- Intelligent application workload](https://learn.microsoft.com/power-platform/well-architected/intelligent-application/) --
  Study guide explicitly requires "Apply the Microsoft Power Platform
  Well-Architected Framework to intelligent application workloads".
- [Power Platform Well-Architected overview](https://learn.microsoft.com/power-platform/well-architected/what-is-power-well-architected) --
  Five pillars: Reliability, Security, Operational Excellence, Performance
  Efficiency, Experience Optimization.
- [Copilot Foundations learning path (AI-3018)](https://learn.microsoft.com/training/paths/copilot-foundations/) --
  Beginner path; useful grounding for generative AI concepts, RAG, and
  Copilot Studio fundamentals before the architect-level material.

Deploy (AB-100 Domain 3, 40--45%):

- [Governance and security for AI agents across the organization](https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/governance-security-across-organization) --
  Agent registry, single control plane, agent development standards (Microsoft
  Agent Framework, Foundry SDK, MCP, A2A), and Agent 365. Near-direct match
  to the Deploy domain's security and governance bullets.
- [Process to build agents across your organization](https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/build-secure-process) --
  Orchestration, models, knowledge and tools, observability, security.
- [Responsible AI policies for AI agents across organizations](https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/responsible-ai-across-organization) --
  Operationalizing Microsoft's six Responsible AI principles for agent
  deployments.
- [Power Platform operations overview and strategy (ALM)](https://learn.microsoft.com/power-platform/guidance/adoption/operate-overview) --
  ALM, observability, capacity, data retention, support strategy. Maps to the
  "Design the ALM process for Copilot Studio agents, connectors, and
  actions" objective.
- [Power Platform availability overview and strategy](https://learn.microsoft.com/power-platform/guidance/adoption/availability-overview) --
  Mission-critical workload identification and disaster recovery for AI
  workloads.

### Microsoft Applied Skills adjacent to AB-100

AB-100 itself is a certification exam, not an Applied Skills assessment. The
following Applied Skills do not substitute for AB-100 but validate component
skills that AB-100 tests architecturally:

- [Create agents in Microsoft Copilot Studio (Applied Skills)](https://learn.microsoft.com/credentials/applied-skills/create-agents-in-microsoft-copilot-studio/) --
  hands-on agent creation; useful foundation for the Design domain.

### Microsoft documentation deep-links (skill-measured grounding)

- [Microsoft Copilot Studio documentation](https://learn.microsoft.com/microsoft-copilot-studio/) --
  primary reference for topics, agent flows, tools, generative orchestration,
  Computer Use, voice mode, reasoning, MCP extensibility.
- [Copilot Studio overview](https://learn.microsoft.com/microsoft-copilot-studio/fundamentals-what-is-copilot-studio) --
  agent, agent flow, and orchestration fundamentals.
- [Microsoft Foundry (Azure AI Foundry) documentation](https://learn.microsoft.com/azure/ai-foundry/) --
  Foundry projects, Foundry Tools, Foundry Models, agent identity, Agent 365
  integration.
- [Microsoft Power Platform documentation](https://learn.microsoft.com/power-platform/) --
  Power Apps, Power Automate, Dataverse, AI Builder, AI hub.
- [Microsoft 365 Copilot extensibility](https://learn.microsoft.com/microsoft-365-copilot/extensibility/) --
  Declarative agents, Microsoft 365 Agents SDK, Teams and SharePoint
  optimization.
- [Microsoft Responsible AI Standard v2 (PDF)](https://blogs.microsoft.com/wp-content/uploads/prod/sites/5/2022/06/Microsoft-Responsible-AI-Standard-v2-General-Requirements-3.pdf) --
  the six principles and 14 goals that underpin the "Review solution for
  adherence to responsible AI principles" objective.
- [Microsoft Enterprise AI Services Code of Conduct](https://learn.microsoft.com/legal/ai-code-of-conduct) --
  customer responsibilities for building on Microsoft AI services.
- [Azure Well-Architected Framework -- AI workloads](https://learn.microsoft.com/azure/well-architected/ai/) --
  cross-referenced from the CAF agent guidance; required background for the
  Deploy domain.
- [AI shared responsibility model](https://learn.microsoft.com/azure/security/fundamentals/shared-responsibility-ai) --
  where Microsoft responsibility ends and customer responsibility begins
  across SaaS, PaaS, and IaaS AI deployments.
- [Responsible AI in Azure Machine Learning](https://learn.microsoft.com/azure/machine-learning/concept-responsible-ai) --
  fairness assessment, interpretability, content safety evaluations.

## Instructor-led training

### Tim Warner -- O'Reilly Live Learning

- [Agentic AI Business Solutions Architect Crash Course (Exam AB-100)](https://www.oreilly.com/live-events/agentic-ai-business-solutions-architect-crash-course-exam-ab-100/0642572326043/) --
  4-hour live course by Tim Warner (Microsoft MVP, Microsoft Certified
  Trainer). Covers every AB-100 skill-measured bullet with architecture
  emphasis on MCP, A2A, Computer Use, and ALM across Microsoft 365 Copilot,
  Copilot Studio, and Microsoft Foundry. This repository (ab100) is the
  companion-materials source of truth for that course.
- [Tim Warner on Pluralsight (author page)](https://www.pluralsight.com/authors/tim-warner) --
  adjacent courses on Azure AI, GitHub Copilot, Microsoft certification prep.
  No AB-100-specific Pluralsight course is published as of 2026-04-21.
- [Tim Warner on LinkedIn](https://www.linkedin.com/in/timothywarner) --
  announcements for upcoming AB-100-related live events.
- [Tim Warner on Pearson IT Certification](https://www.pearsonitcertification.com/authors/bio/73ba185c-c177-4d25-9357-c91c6739f3aa) --
  Microsoft Press and Pearson author page.

### Microsoft Learning Partner delivery

- [Course AB-100T00-A via Certified (Virtual Instructor-Led Training)](https://certified.virtualinstructorledtraining.com/course/ab-100t00-architecting-agentic-ai-business-solutions/) --
  third-party Microsoft Learning Partner offering the official 3-day AB-100T00
  course. Many Microsoft Learning Partners deliver this course; check the
  Microsoft Learn course page for the authoritative partner list.
- [K21 Academy -- Microsoft Agentic AI Business Solutions Architect program](https://k21academy.com/azure-aiml/microsoft-agentic-ai-business-solutions-architect-2/) --
  instructor-led program with labs. Borderline credible for breadth; verify
  currency of content before purchasing.

### Pluralsight, LinkedIn Learning, Coursera, edX

No AB-100-specific course has been published on Pluralsight, LinkedIn
Learning, Coursera, or edX as of 2026-04-21. See "What does NOT exist yet"
below. Related Pluralsight and LinkedIn Learning content on Copilot Studio,
Microsoft Foundry, and Azure AI Engineer exists but does not specifically
target AB-100.

## Practice tests

- [MeasureUp -- Microsoft Practice Test AB-100: Agentic AI Business Solutions Architect](https://www.measureup.com/microsoft-ab-100-agentic-ai-business-solutions-architect-practice-test.html) --
  official Microsoft-licensed practice test. 102 questions, certification mode
  and practice mode, rationales with references, test-pass guarantee. Current
  list price $99.00. This is the gold-standard third-party practice test.
- [MeasureUp Assessment (question-bank-only variant)](https://www.measureup.com/microsoft-ab-100-agentic-ai-business-solutions-architect-assessment.html) --
  the assessment-only SKU for the same item bank.
- [MeasureUp AB-100 on MindHub Pro](https://www.mindhubpro.com/microsoft-practice-test-ab-100-agentic-ai-business-solutions-architect/p/MU180-AB-100) --
  alternate reseller for the same MeasureUp product.
- [Microsoft Learn practice assessment](https://learn.microsoft.com/credentials/certifications/practice-assessments-for-microsoft-certifications) --
  the FREE official practice assessment hub. As of 2026-04-21, AB-100 is not
  yet listed here. Microsoft states the practice assessment "is not currently
  available" and is typically published within eight weeks of an exam's
  transition out of beta. Check back periodically.

Warning: A large number of sites advertise "real AB-100 exam questions",
"actual dumps", or "pass-guaranteed" leaks. Using them violates the Microsoft
Certification Program Agreement NDA and risks exam decertification. This list
does not link to those sites. Treat any vendor promising verbatim exam
questions as suspect. The CAPS and BOLD version of that warning: do **NOT**
use braindump or "actual exam question" sites -- they will get your cert
revoked.

### Borderline-credible practice question sources

These vendors publish AB-100-branded question banks that may be useful for
additional repetition. Quality is inconsistent and they are not endorsed by
Microsoft. Verify against the official study guide before trusting any
rationale.

- [Whizlabs -- AB-100 overview page](https://www.whizlabs.com/microsoft-ab-100-agentic-ai-architect-certification/) --
  preparation resources and practice questions. Historically reliable for
  Microsoft exam prep breadth, though depth varies.
- [Examinotion -- AB-100 study guide and free practice questions](https://www.examinotion.com/study-guide/ab-100) --
  combines a study guide with free practice questions; useful as an extra
  angle on the skills-measured list.

## Community content

### Exam experience posts and blogs

- [My Experience with AB-100 -- Rakesh Darge (D365 Cliff Notes)](https://d365cliffsnotes.com/my-experience-with-ab-100-earning-the-microsoft-certified-ai-business-solutions-architect-badge) --
  February 7, 2026. Strong architectural framing: emphasizes decision-making
  over feature recall. One of the better first-person write-ups.
- [AB-100 Exam Experience -- Dr. S. Gomathi (Learn With Goms)](https://www.learnwithgoms.com/2026/02/ab-100-exam-experience-microsoft.html) --
  February 11, 2026. Walks through agent-first architecture, governance, and
  enterprise AI decision-making across the Microsoft ecosystem.
- [Agentic AI Business Solutions Architect Exam AB-100 Experience -- Pavan Mani Deep Y (Power Community)](https://www.powercommunity.com/agentic-ai-business-solutions-architect-exam-ab-100-experience/) --
  November 15, 2025. Beta-exam perspective: heavy on Copilot Studio, Microsoft
  Foundry, and Dynamics 365 scenarios; AI Builder and licensing were notably
  absent from the test.
- [Agentic AI Business Solutions Architect Exam AB-100 Experience (mirror) -- Pavan Mani Deep Y (ECELLORS CRM Blog)](https://ecellorscrm.com/2025/11/15/agentic-ai-business-solutions-architect-exam-ab-100-experience/) --
  same post, mirrored on the author's own blog.
- [Exam AB-100 -- The CRM Ninja](https://thecrm.ninja/exam-ab-100-agentic-ai-business-solutions-architect/) --
  beta-exam retrospective. Notes the Dynamics 365 Finance and Operations gaps
  and frames AB-100 as a paradigm shift in how Microsoft tests architectural
  thinking.
- [AB-100 Exam Experience: What Early Candidates Are Saying -- Examinotion](https://examinotion.com/blog/ab-100-exam-experience) --
  aggregated summary of beta candidate feedback.
- [How to Pass the AB-100 Exam: Complete Guide -- Examinotion](https://examinotion.com/blog/how-to-pass-ab-100-exam) --
  study-plan walkthrough organized by domain.
- [Microsoft's AB-100 Exam: Everything You Need to Know -- IDOdata](https://idodata.com/2025/10/22/microsofts-ab-100-exam-everything-you-need-to-know/) --
  October 22, 2025 preview (early beta context). Useful for historical framing
  of the cert launch.

### Microsoft announcement content

- [New Certification for architects of agentic AI business solutions -- Liberty Munson (Microsoft Tech Community)](https://techcommunity.microsoft.com/blog/skills-hub-blog/new-certification-for-architects-of-agentic-ai-business-solutions/4428968) --
  Official Microsoft announcement, October 21, 2025 (updated November 5,
  2025). The source of truth for the beta launch, 80% discount code, and
  general availability timeline.
- [Microsoft Unveils the NEW Agentic AI Business Solutions Architect Certification (AB-100 beta) -- Nikee Tomas (Tutorials Dojo)](https://tutorialsdojo.com/microsoft-unveils-the-new-agentic-ai-business-solutions-architect-certification-ab-100-beta/) --
  community summary of the launch announcement.
- [Microsoft's New AB-Series Certs: What IT Pros Should Know -- Cedric Jackson (CBT Nuggets)](https://www.cbtnuggets.com/blog/technology/programming/microsofts-new-ab-series-certs) --
  February 11, 2026 update covering AB-900, AB-730, AB-731, and AB-100
  together; good context for learners sequencing their studies.
- [Microsoft's New AB Certifications -- D365Training.com](https://www.d365training.com/post/microsoft-s-new-ab-certifications-which-one-is-right-for-you) --
  positioning guide across AB-900, AB-730, AB-731, and AB-100.
- [Complete Overview of Microsoft AB-900, AB-730, AB-731, AB-100 -- Whizlabs](https://www.whizlabs.com/blog/complete-overview-of-microsoft-ab-series/) --
  series overview.

### Video and podcast content

- [AB-900, AB-100, AB-730, AB-731: Making Sense of Microsoft's New Copilot Certifications (with Tiago Costa) -- Vlad Catrinescu](https://vladtalkstech.com/microsoft-learning-and-credential-news/ab-900-ab-100-ab-730-ab-731-making-sense-of-microsofts-new-copilot-certifications-with-tiago-costa/) --
  video discussion with a Microsoft MVP guest; breaks down scope, audience,
  and study recommendations for each AB-series exam.
- [5 New Microsoft 365 Copilot Credentials Explained -- Vlad Catrinescu](https://vladtalkstech.com/microsoft-learning-and-credential-news/5-new-microsoft-365-copilot-credentials-explained-ab-900-ab-730-ab-731-applied-skills/) --
  companion video covering AB-900, AB-730, AB-731, and the adjacent Applied
  Skills assessments.
- [AB-100 Complete Study Plan -- YouTube](https://www.youtube.com/watch?v=GWlqoH5s2jQ) --
  structured roadmap video (published February 16, 2026 per search metadata;
  content quality not independently verified).
- [Microsoft Agentic AI Business Solutions Architect (AB-100) Exam Review -- YouTube](https://www.youtube.com/watch?v=MCIon6epv74) --
  community exam-review video (content quality not independently verified).
- [Microsoft Learn -- Exam Readiness Zone (show browser)](https://learn.microsoft.com/shows/exam-readiness-zone/) --
  Microsoft's official readiness show. No AB-100 episode has aired as of
  2026-04-21, but monitor this channel.

### Forums and communities

- [AB-100 preparation thread -- Microsoft Tech Community (Skills Hub discussions)](https://techcommunity.microsoft.com/discussions/skills-hub-discussions/ab-100-agentic-ai-business-solutions-architect-preperation/4497806) --
  active preparation discussion.
- [AB-100 preparation thread (mirror) -- Microsoft Tech Community](https://techcommunity.microsoft.com/discussions/skills-hub-discussions/ab-100-agentic-ai-business-solutions-architect-preparation-/4497812) --
  additional preparation Q&A.
- [Actual Release Dates for AB-XXX courses -- Microsoft Tech Community](https://techcommunity.microsoft.com/discussions/learningpartnertraining/actual-release-dates-for-ab-xxx-courses/4489653) --
  timeline clarifications for the AB-series courseware.
- [Regarding AB-100 Certification Exam Status -- Microsoft Q&A](https://learn.microsoft.com/answers/questions/5814653/regarding-ab-100-certification-exam-status) --
  status question thread.
- [How to register for AB-100 -- Microsoft Q&A](https://learn.microsoft.com/answers/questions/5835257/how-to-register-for-ab-100-agentic-ai-business-sol) --
  registration walkthrough.
- [Microsoft Learn community hub](https://techcommunity.microsoft.com/t5/microsoft-learn/ct-p/MicrosoftLearn) --
  general Microsoft Learn discussion.
- [Microsoft MVP Program community hub](https://techcommunity.microsoft.com/category/mvp) --
  MVPs frequently post AB-100 content here.
- [Microsoft Q&A (Credentials)](https://learn.microsoft.com/answers/tags/414/certification) --
  certification-tagged Q&A.
- As of 2026-04-21, no dedicated r/AzureCertification megathread exists for
  AB-100. Reddit search surfaces only generic Microsoft Learn certification
  page links rather than community discussion. This is a real gap.
- No public Discord or Slack channel is known to be dedicated to AB-100 yet.

### GitHub repositories

- [timothywarner-org/ab100 (this repository)](https://github.com/timothywarner-org/ab100) --
  Tim Warner's O'Reilly Live Training companion, organized by hour and by
  AB-100 domain. Includes the AB-100 Cert Buddy GitHub Copilot agent with
  practice-question, lab, and study-plan skills grounded in Microsoft Learn
  via MCP.
- [karaniph/Microsoft-AI-certification-exams](https://github.com/karaniph/Microsoft-AI-certification-exams) --
  free study guides and 20 free practice questions covering AB-100 (AI
  Architect), AB-730 (AI Business Professional), and AB-900 (AI
  Fundamentals).
- [Elrashid/ab100](https://github.com/Elrashid/ab100) --
  small community repo; content volume and currency should be evaluated
  before relying on it.
- [Azure/AI-Landing-Zones](https://github.com/Azure/AI-Landing-Zones) --
  referenced from the Cloud Adoption Framework agent guidance; useful for the
  Deploy-domain environment-strategy objective.
- [microsoft/Data-and-Agent-Governance-and-Security-Accelerator](https://github.com/microsoft/Data-and-Agent-Governance-and-Security-Accelerator) --
  accelerator for governing Microsoft Foundry resources with Defender for
  Cloud, diagnostics, tagging, and Content Safety.

## Foundational reading (not AB-100-specific but critical)

- [Microsoft Responsible AI Standard v2 (PDF)](https://blogs.microsoft.com/wp-content/uploads/prod/sites/5/2022/06/Microsoft-Responsible-AI-Standard-v2-General-Requirements-3.pdf) --
  the six principles and 14 goals. Cited throughout Microsoft's AI
  documentation.
- [Microsoft Responsible AI hub](https://www.microsoft.com/ai/responsible-ai) --
  the public-facing responsible AI portal.
- [Azure Well-Architected Framework -- AI workloads](https://learn.microsoft.com/azure/well-architected/ai/) --
  required background for the Deploy domain's ALM, reliability, and security
  objectives.
- [Power Platform Well-Architected](https://learn.microsoft.com/power-platform/well-architected/) --
  five pillars covering Reliability, Security, Operational Excellence,
  Performance Efficiency, and Experience Optimization.
- [Power Platform Well-Architected -- Intelligent application workload](https://learn.microsoft.com/power-platform/well-architected/intelligent-application/) --
  workload-specific guidance called out in the AB-100 skills measured.
- [Microsoft Enterprise AI Services Code of Conduct](https://learn.microsoft.com/legal/ai-code-of-conduct) --
  binding customer responsibilities when building on Microsoft AI services.
- [Model Context Protocol (MCP) specification](https://modelcontextprotocol.io) --
  the open protocol Microsoft standardizes on for tool and data
  interoperability. AB-100 requires working knowledge of MCP.
- [Agent2Agent (A2A) protocol overview on Microsoft Learn](https://learn.microsoft.com/microsoft-copilot-studio/add-agent-agent-to-agent) --
  A2A wiring for Copilot Studio. AB-100 requires working knowledge of A2A.
- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) --
  Microsoft aligns its AI lifecycle (Govern, Map, Measure, Manage) with
  NIST AI RMF; useful background for the governance objectives.
- [Microsoft AI shared responsibility model](https://learn.microsoft.com/azure/security/fundamentals/shared-responsibility-ai) --
  clarifies what Microsoft secures versus what the customer must secure.

## Related Microsoft AI certifications (prerequisites and context)

The 12 qualifying prerequisites for AB-100 are listed on the credential page
above. These are the most commonly relevant for AB-100 candidates:

- [Microsoft Certified: Azure AI Engineer Associate (AI-102)](https://learn.microsoft.com/credentials/certifications/azure-ai-engineer/) --
  the most technical prerequisite; closest overlap with Microsoft Foundry
  content.
- [AI-102 study guide](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ai-102) --
  as of December 23, 2025, AI-102 terminology was updated to "Microsoft
  Foundry" (from "Azure AI Foundry"). Review the change log before studying.
- [AI-103: Developing AI Apps and Agents on Azure (study guide)](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ai-103) --
  April 16, 2026 skills update. Adjacent content; useful for developer-side
  grounding.
- [AB-620: Microsoft Copilot Studio Agent Developer (study guide)](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-620) --
  developer-focused companion exam; AB-100 architects benefit from reviewing
  the AB-620 objectives.
- [AB-730: AI Business Professional (study guide)](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-730) --
  business-user adjacent credential; not a prerequisite for AB-100 but useful
  framing for stakeholder conversations.
- [AB-731: AI Transformation Leader (study guide)](https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-731) --
  leadership-focused adjacent credential.
- [Microsoft Certified: AI Business Professional (certification)](https://learn.microsoft.com/credentials/certifications/ai-business-professional/) --
  the certification landing for AB-730.
- [Complete Guide to Microsoft AI Certifications 2026 -- Examinotion](https://examinotion.com/study-guide/microsoft-ai-certification) --
  community overview of the whole AB-series family and AI-901.

## What does NOT exist yet (honest gap list)

As of 2026-04-21:

- Microsoft has NOT published the free official practice assessment for
  AB-100 at https://learn.microsoft.com/credentials/certifications/practice-assessments-for-microsoft-certifications.
  Microsoft indicates it typically ships within 8 weeks after general
  availability. AB-100 reached GA in January 2026, so the assessment is
  overdue and may still appear.
- No Pluralsight, LinkedIn Learning, Coursera, or edX course is dedicated to
  AB-100. Tim Warner's O'Reilly Live course is currently the only named
  instructor-led course besides the official Microsoft AB-100T00-A
  partner-delivered class.
- No AB-100 episode has been published on the Microsoft Exam Readiness Zone
  show.
- No dedicated r/AzureCertification megathread, Discord server, or Slack
  workspace is known to focus on AB-100.
- No Microsoft Applied Skills credential yet maps end-to-end to AB-100. The
  "Create agents in Microsoft Copilot Studio" Applied Skills assessment
  covers only a subset of the Design domain.
- No AB-100 Microsoft Press or O'Reilly exam-reference book is published or
  announced.
- No Cert Prep MeasureUp practice test is FREE -- the only free official
  practice content (when it arrives) will be on Microsoft Learn.

## Contributing to this list

If you publish AB-100 study material -- a blog post, a video, a lab, a GitHub
repo, a community deck -- open a pull request against this file. Add a single
bullet under the correct section using the format:

```
- [Title](URL) -- one-line annotation including author, date, and medium.
```

Do not add links to braindump or "actual exam question" vendors. PRs that add
those will be closed.

## References (deduplicated)

Official Microsoft:

- https://learn.microsoft.com/credentials/certifications/exams/ab-100
- https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-100
- https://learn.microsoft.com/credentials/certifications/agentic-ai-business-solutions-architect/
- https://learn.microsoft.com/training/courses/ab-100t00
- https://learn.microsoft.com/credentials/certifications/practice-assessments-for-microsoft-certifications
- https://learn.microsoft.com/credentials/certifications/renew-your-microsoft-certification
- https://learn.microsoft.com/credentials/certifications/exam-scoring-reports
- https://learn.microsoft.com/credentials/certifications/deals
- https://learn.microsoft.com/credentials/certifications/resources/study-guides/ai-102
- https://learn.microsoft.com/credentials/certifications/resources/study-guides/ai-103
- https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-620
- https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-730
- https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-731
- https://learn.microsoft.com/credentials/certifications/ai-business-professional/
- https://learn.microsoft.com/credentials/certifications/azure-ai-engineer/
- https://learn.microsoft.com/credentials/applied-skills/create-agents-in-microsoft-copilot-studio/
- https://learn.microsoft.com/shows/exam-readiness-zone/
- https://aka.ms/AB100-StudyGuide
- https://go.microsoft.com/fwlink/?linkid=2226877
- https://arch-center.azureedge.net/Credentials/Certification-Poster_en-us.pdf

Microsoft Learn documentation:

- https://learn.microsoft.com/microsoft-copilot-studio/
- https://learn.microsoft.com/microsoft-copilot-studio/fundamentals-what-is-copilot-studio
- https://learn.microsoft.com/microsoft-copilot-studio/guidance/architecture/overview
- https://learn.microsoft.com/microsoft-copilot-studio/guidance/architecture-overview
- https://learn.microsoft.com/microsoft-copilot-studio/guidance/architecture/components-of-agent-architecture
- https://learn.microsoft.com/microsoft-copilot-studio/authoring-add-other-agents
- https://learn.microsoft.com/microsoft-copilot-studio/add-agent-foundry-agent
- https://learn.microsoft.com/microsoft-copilot-studio/add-agent-agent-to-agent
- https://learn.microsoft.com/power-platform/architecture/products/copilot-studio
- https://learn.microsoft.com/azure/ai-foundry/
- https://learn.microsoft.com/power-platform/
- https://learn.microsoft.com/microsoft-365-copilot/extensibility/
- https://learn.microsoft.com/azure/cloud-adoption-framework/scenarios/ai/
- https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/
- https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/organization-people-readiness-plan
- https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/governance-security-across-organization
- https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/build-secure-process
- https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/responsible-ai-across-organization
- https://learn.microsoft.com/training/paths/explore-microsoft-approach-ai/
- https://learn.microsoft.com/training/paths/solution-architect-data/
- https://learn.microsoft.com/training/modules/architect-power-virtual-agents/
- https://learn.microsoft.com/training/paths/copilot-foundations/
- https://learn.microsoft.com/power-platform/well-architected/
- https://learn.microsoft.com/power-platform/well-architected/what-is-power-well-architected
- https://learn.microsoft.com/power-platform/well-architected/intelligent-application/
- https://learn.microsoft.com/power-platform/guidance/adoption/operate-overview
- https://learn.microsoft.com/power-platform/guidance/adoption/availability-overview
- https://learn.microsoft.com/azure/well-architected/ai/
- https://learn.microsoft.com/azure/machine-learning/concept-responsible-ai
- https://learn.microsoft.com/azure/security/fundamentals/shared-responsibility-ai
- https://learn.microsoft.com/legal/ai-code-of-conduct
- https://www.microsoft.com/ai/responsible-ai
- https://blogs.microsoft.com/wp-content/uploads/prod/sites/5/2022/06/Microsoft-Responsible-AI-Standard-v2-General-Requirements-3.pdf
- https://modelcontextprotocol.io
- https://www.nist.gov/itl/ai-risk-management-framework

Instructor-led:

- https://www.oreilly.com/live-events/agentic-ai-business-solutions-architect-crash-course-exam-ab-100/0642572326043/
- https://www.pluralsight.com/authors/tim-warner
- https://www.linkedin.com/in/timothywarner
- https://www.pearsonitcertification.com/authors/bio/73ba185c-c177-4d25-9357-c91c6739f3aa
- https://certified.virtualinstructorledtraining.com/course/ab-100t00-architecting-agentic-ai-business-solutions/
- https://k21academy.com/azure-aiml/microsoft-agentic-ai-business-solutions-architect-2/

Practice tests:

- https://www.measureup.com/microsoft-ab-100-agentic-ai-business-solutions-architect-practice-test.html
- https://www.measureup.com/microsoft-ab-100-agentic-ai-business-solutions-architect-assessment.html
- https://www.mindhubpro.com/microsoft-practice-test-ab-100-agentic-ai-business-solutions-architect/p/MU180-AB-100
- https://www.whizlabs.com/microsoft-ab-100-agentic-ai-architect-certification/
- https://www.examinotion.com/study-guide/ab-100

Community, exam experiences, and announcements:

- https://techcommunity.microsoft.com/blog/skills-hub-blog/new-certification-for-architects-of-agentic-ai-business-solutions/4428968
- https://tutorialsdojo.com/microsoft-unveils-the-new-agentic-ai-business-solutions-architect-certification-ab-100-beta/
- https://www.cbtnuggets.com/blog/technology/programming/microsofts-new-ab-series-certs
- https://www.d365training.com/post/microsoft-s-new-ab-certifications-which-one-is-right-for-you
- https://www.whizlabs.com/blog/complete-overview-of-microsoft-ab-series/
- https://d365cliffsnotes.com/my-experience-with-ab-100-earning-the-microsoft-certified-ai-business-solutions-architect-badge
- https://www.learnwithgoms.com/2026/02/ab-100-exam-experience-microsoft.html
- https://www.powercommunity.com/agentic-ai-business-solutions-architect-exam-ab-100-experience/
- https://ecellorscrm.com/2025/11/15/agentic-ai-business-solutions-architect-exam-ab-100-experience/
- https://thecrm.ninja/exam-ab-100-agentic-ai-business-solutions-architect/
- https://examinotion.com/blog/ab-100-exam-experience
- https://examinotion.com/blog/how-to-pass-ab-100-exam
- https://examinotion.com/study-guide/microsoft-ai-certification
- https://idodata.com/2025/10/22/microsofts-ab-100-exam-everything-you-need-to-know/

Videos and podcasts:

- https://vladtalkstech.com/microsoft-learning-and-credential-news/ab-900-ab-100-ab-730-ab-731-making-sense-of-microsofts-new-copilot-certifications-with-tiago-costa/
- https://vladtalkstech.com/microsoft-learning-and-credential-news/5-new-microsoft-365-copilot-credentials-explained-ab-900-ab-730-ab-731-applied-skills/
- https://www.youtube.com/watch?v=GWlqoH5s2jQ
- https://www.youtube.com/watch?v=MCIon6epv74

Forums and Q&A:

- https://techcommunity.microsoft.com/discussions/skills-hub-discussions/ab-100-agentic-ai-business-solutions-architect-preperation/4497806
- https://techcommunity.microsoft.com/discussions/skills-hub-discussions/ab-100-agentic-ai-business-solutions-architect-preparation-/4497812
- https://techcommunity.microsoft.com/discussions/learningpartnertraining/actual-release-dates-for-ab-xxx-courses/4489653
- https://learn.microsoft.com/answers/questions/5814653/regarding-ab-100-certification-exam-status
- https://learn.microsoft.com/answers/questions/5835257/how-to-register-for-ab-100-agentic-ai-business-sol
- https://techcommunity.microsoft.com/t5/microsoft-learn/ct-p/MicrosoftLearn
- https://techcommunity.microsoft.com/category/mvp

GitHub:

- https://github.com/timothywarner-org/ab100
- https://github.com/karaniph/Microsoft-AI-certification-exams
- https://github.com/Elrashid/ab100
- https://github.com/Azure/AI-Landing-Zones
- https://github.com/microsoft/Data-and-Agent-Governance-and-Security-Accelerator
