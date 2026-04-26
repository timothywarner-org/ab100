# Course Plan -- Agentic AI Business Solutions Architect

**Format:** O'Reilly Live Learning -- 4 hours -- four 50-minute segments
**Instructor:** Tim Warner
**Target exam:** Microsoft AB-100 -- Agentic AI Business Solutions Architect

## Course summary

This live course is a focused, exam-aligned tour of the Microsoft AB-100 skills-measured
list for the **Agentic AI Business Solutions Architect** certification. In four
50-minute segments we cover all three published domains end to end: planning AI-powered
business solutions, designing agentic-first architectures, and deploying them with the
operations, ALM, security, and responsible AI rigor Microsoft expects of an advanced-level
solution architect. Each segment combines concept teaching, a live demo across Microsoft
Copilot Studio, Microsoft 365 Copilot, Microsoft Foundry, and Dynamics 365, and an exam
mastery wrap that turns the topics into recallable item-writer patterns. Learners leave
with a complete mental map of the AB-100 domains, hands-on patterns they can replay in
their own tenant, and a study plan to close their remaining gaps before exam day.

## What you will learn

- Plan AI-powered business solutions: requirements analysis, AI strategy on the Cloud
  Adoption Framework, multi-agent platform selection across Microsoft 365 Copilot,
  Copilot Studio, and Microsoft Foundry, and ROI / build-buy-extend analysis.
- Design AI-powered business solutions: task, autonomous, and prompt-and-response agents,
  Copilot Studio topics and agent flows, Foundry Tools, MCP and A2A extensibility, and
  Power Platform Well-Architected Framework alignment for intelligent workloads.
- Deploy AI-powered business solutions: monitoring and telemetry interpretation, agent
  testing strategy, ALM for agents, connectors, custom models, and Dynamics 365 AI, plus
  AI security, governance, prompt manipulation defense, data residency, audit trails,
  and responsible AI review.
- Pass AB-100: walk in confident on item formats, exam policy, scoring, retake rules,
  and the highest-yield study moves for the final week.

## Prerequisites

- A Microsoft 365 tenant with Microsoft 365 Copilot and Copilot Studio licensing (a
  developer tenant or a trial works for the demos).
- A Power Platform environment where you can create agents and a Microsoft Foundry
  (Azure AI Foundry) project for the model and Foundry Tools demos.
- Working knowledge of one Microsoft business application stack -- Dynamics 365 customer
  experience and service, Dynamics 365 finance and supply chain, or Microsoft Power
  Platform -- consistent with the AB-100 prerequisite associate certifications.
- Comfort with prompt engineering basics, application lifecycle management concepts, and
  baseline cloud security vocabulary (identity, RBAC, data residency, audit logging).

## Schedule

| Time        | Activity                                                     |
| ----------- | ------------------------------------------------------------ |
| 0:00 -- 0:50 | [Hour 1 -- Plan AI Solutions](../src/hour1-plan/)           |
| 0:50 -- 1:00 | Q&A + Break                                                 |
| 1:00 -- 1:50 | [Hour 2 -- Design AI Solutions](../src/hour2-design/)       |
| 1:50 -- 2:00 | Q&A + Break                                                 |
| 2:00 -- 2:50 | [Hour 3 -- Deploy AI Solutions](../src/hour3-deploy/)       |
| 2:50 -- 3:00 | Q&A + Break                                                 |
| 3:00 -- 3:50 | [Hour 4 -- Security & Exam Mastery](../src/hour4-security/) |
| 3:50 -- 4:00 | Wrap-up, resources, next steps                              |

## Exam mapping

| Hour | AB-100 Domain                                                                | Domain Weight |
| ---- | ---------------------------------------------------------------------------- | ------------- |
| 1    | Plan AI-powered business solutions (Subdomains 1.1, 1.2, 1.3)                | 25-30%        |
| 2    | Design AI-powered business solutions (Subdomains 2.1, 2.2, 2.3)              | 25-30%        |
| 3    | Deploy -- analyze, monitor, tune, test, and ALM (Subdomains 3.1, 3.2, 3.3)   | ~20-25%       |
| 4    | Deploy -- responsible AI, security, governance, risk, compliance (3.4) + exam mastery | ~20-25% |

See [`./ab100-exam-objectives.md`](./ab100-exam-objectives.md) for the canonical, verbatim
Microsoft Learn skills-measured list. The hour-by-hour mapping below shows where each
bullet from that document is taught in the course.

## Hour 1 -- Plan AI Solutions (Domain 1, 25-30%)

**Reference:** [`../src/hour1-plan/`](../src/hour1-plan/)

### Learning objectives

- Analyze business requirements to choose between task automation, data analytics, and
  decision-making agent patterns, and assess grounding data quality.
- Apply the Cloud Adoption Framework AI adoption process and decide when to extend
  Microsoft 365 Copilot, build a Copilot Studio agent, or build a custom Foundry agent.
- Build an ROI and total cost of ownership case for an AI-powered business solution and
  decide build, buy, or extend, including model router use.

### Teaching flow

| Minutes | Segment  | Notes                                                                                              |
| ------- | -------- | -------------------------------------------------------------------------------------------------- |
| 0-10    | Opener   | Welcome, AB-100 audience profile, course map, the three Microsoft domain weights, exam logistics. |
| 10-30   | Concepts | Subdomain 1.1 grounding-data review; Subdomain 1.2 strategy on CAF, platform selection, prebuilt vs custom, prompt library, Microsoft AI Center of Excellence; Subdomain 1.3 ROI, TCO, build-buy-extend, model router. |
| 30-45   | Demo     | Walk a Contoso scenario through the planning canvas: requirements -> grounding-data scorecard -> platform decision tree -> ROI sheet. |
| 45-50   | Wrap-up  | Plan-domain exam patterns; transition to Hour 2 design.                                            |

### Subdomain coverage

- **1.1 Analyze requirements** -- agents in task automation, data analytics, decision-making; grounding data quality (accuracy, relevance, timeliness, cleanliness, availability); organizing solution data for downstream AI systems.
- **1.2 Design overall AI strategy** -- AI adoption process from the Cloud Adoption Framework for Azure; strategy for AI and agents in business solutions; multi-agent solutions across Microsoft 365 Copilot, Copilot Studio, and Microsoft Foundry; prebuilt agent use cases; rules and constraints for Copilot Studio, Microsoft Foundry, and Foundry Tools; generative AI and knowledge sources in Copilot Studio agents; build custom agents vs extend Microsoft 365 Copilot; when to build custom AI models; prompt library guidelines; small language model use cases; prompt engineering guidelines; Microsoft AI Center of Excellence elements; AI solutions across multiple Dynamics 365 apps.
- **1.3 Costs and benefits** -- ROI criteria including TCO; ROI analysis for an AI-powered business process; build, buy, or extend analysis; model router routing requests to the most suitable model.

### Demo

Plan a multi-agent Contoso customer service modernization: capture requirements, score
grounding data, decide between extending Microsoft 365 Copilot for Service vs building a
Copilot Studio agent vs a custom Foundry agent, then produce a one-page ROI / TCO sheet
that includes model router rationale.

### Exercise

Take the lab scenario in `../src/hour1-plan/` and produce your own platform decision and
ROI memo. Submit a single page that names the chosen platform, the grounding data plan,
and the build-buy-extend justification.

## Hour 2 -- Design AI Solutions (Domain 2, 25-30%)

**Reference:** [`../src/hour2-design/`](../src/hour2-design/)

### Learning objectives

- Design Copilot in Dynamics 365 customizations, Copilot Studio topics and agent flows,
  task, autonomous, and prompt-and-response agents, and Foundry Tools choices.
- Design extensibility with custom Foundry models, Microsoft 365 Copilot agents, MCP,
  Computer Use, voice mode, and reasoning behaviors.
- Orchestrate prebuilt AI features across Dynamics 365 finance and supply chain,
  Dynamics 365 customer experience and service, Microsoft 365 Copilot for Sales and
  Service, and Microsoft Power Platform AI hub.

### Teaching flow

| Minutes | Segment  | Notes                                                                                              |
| ------- | -------- | -------------------------------------------------------------------------------------------------- |
| 0-10    | Opener   | Recap Hour 1; agent typology (task, autonomous, prompt-and-response); when to use NLP, CLU, or generative orchestration. |
| 10-30   | Concepts | Subdomain 2.1 Copilot Studio topic and flow design, Foundry Tools selection, Power Platform Well-Architected for intelligent workloads; Subdomain 2.2 extensibility with custom Foundry models, MCP, Computer Use, reasoning, voice; Subdomain 2.3 orchestration across Dynamics 365 and Microsoft 365 Copilot. |
| 30-45   | Demo     | Build a Copilot Studio agent with topics, fallback, an agent flow, a prompt action, and an MCP-connected Foundry tool; show how the same scenario is met by Microsoft 365 Copilot agent extensibility. |
| 45-50   | Wrap-up  | Design-domain exam patterns; transition to Hour 3 deployment.                                       |

### Subdomain coverage

- **2.1 Design AI and agents for business solutions** -- Copilot business terms in Dynamics 365 customer experience and service; customizations of Copilot in those apps; connectors for Copilot in Dynamics 365 Sales; agents for Dynamics 365 Contact Center channels; task agents; autonomous agents; prompt-and-response agents; Foundry Tools selection; code-first generative pages and agent feed for apps; Copilot Studio topic design including fallback; data processing for AI models and grounding; AI components in a Power Apps canvas app; Microsoft Power Platform Well-Architected Framework for intelligent workloads; choosing standard NLP vs Azure conversational language understanding vs generative AI orchestration in Copilot Studio; agents and agent flows with Copilot Studio; prompt actions in Copilot Studio.
- **2.2 Design extensibility** -- AI solutions with custom models in Microsoft Foundry; agents in Microsoft 365 Copilot; agent extensibility in Copilot Studio; agent extensibility with Model Context Protocol in Copilot Studio; agents that automate tasks with Computer Use in Copilot Studio; agent behaviors in Copilot Studio including reasoning and voice mode; optimizing solution design with agents in Microsoft 365 (Teams and SharePoint).
- **2.3 Orchestrate prebuilt agents and apps** -- AI features in Dynamics 365 finance and supply chain; AI features in Dynamics 365 customer experience and service; Microsoft 365 agents for business scenarios; Microsoft 365 Copilot for Sales and Microsoft 365 Copilot for Service configuration; Microsoft Power Platform AI features including AI hub; finance and operations agent chats with additional knowledge sources; adding knowledge sources to in-app help and guidance for Dynamics 365 Finance or Dynamics 365 Supply Chain Management.

### Demo

Build a Copilot Studio agent for a Contoso scenario that includes: at least one classic
topic with fallback, an agent flow, a prompt action, an MCP-connected Foundry tool, and
a knowledge source. Then show how the same business outcome is delivered as a Microsoft
365 Copilot agent for the Microsoft 365 channels.

### Exercise

Pick one Dynamics 365 family (customer experience and service, or finance and supply
chain) and propose the prebuilt AI features and Microsoft 365 Copilot orchestrations that
satisfy the user story in `../src/hour2-design/`. Justify each choice in one or two
sentences.

## Hour 3 -- Deploy AI Solutions: operations, testing, ALM (Domain 3, ~20-25%)

**Reference:** [`../src/hour3-deploy/`](../src/hour3-deploy/)

### Learning objectives

- Recommend monitoring tools and processes for agents, interpret telemetry, and tune
  performance and models from real backlog and user feedback signals.
- Build a testing strategy that covers agent metrics, validation criteria for custom AI
  models, Copilot prompt best-practice validation, and end-to-end multi-Dynamics 365 tests.
- Design ALM across data, Copilot Studio agents and connectors and actions, Microsoft
  Foundry agents, custom AI models, and Dynamics 365 AI for both finance and supply chain
  and customer experience and service.

### Teaching flow

| Minutes | Segment  | Notes                                                                                              |
| ------- | -------- | -------------------------------------------------------------------------------------------------- |
| 0-10    | Opener   | Recap Hour 2; Deploy-domain split note: Hour 3 is operations, testing, and ALM; Hour 4 is security and governance. |
| 10-30   | Concepts | Subdomain 3.1 monitoring and telemetry; Subdomain 3.2 test strategy, validation criteria, and Copilot-assisted test case generation; Subdomain 3.3 ALM across data, Copilot Studio, Foundry, custom models, and Dynamics 365 AI. |
| 30-45   | Demo     | Solution-aware Copilot Studio agent moved through dev -> test -> prod with Power Platform CLI; show telemetry in monitoring tools and a Copilot-generated test plan. |
| 45-50   | Wrap-up  | Operations-domain exam patterns; transition to Hour 4 security and governance.                      |

### Subdomain coverage

- **3.1 Analyze, monitor, tune** -- process and tools for monitoring agents; backlog and user feedback analysis of AI and agent usage; AI-based tools to identify issues and tune; agent performance and metrics monitoring; telemetry interpretation for performance and model tuning.
- **3.2 Manage testing** -- test process and metrics for agents; validation criteria for custom AI models; Copilot prompt best-practice validation; end-to-end test scenarios across multiple Dynamics 365 apps; strategy for creating test cases by using Copilot.
- **3.3 ALM process** -- ALM for data used in AI models and agents; ALM for Copilot Studio agents, connectors, and actions; ALM for Microsoft Foundry agents; ALM for custom AI models; ALM for AI in Dynamics 365 finance and supply chain; ALM for AI in Dynamics 365 customer experience and service.

### Demo

Move a solution-aware Copilot Studio agent from a development environment through test
and into production using Power Platform CLI, show monitoring telemetry on the deployed
agent, and use Copilot to generate the test plan and validation criteria for the model
calls inside the agent.

### Exercise

For an existing agent in your tenant (or the lab agent in `../src/hour3-deploy/`),
write the one-page ALM plan that names environments, source control, deployment tooling,
test stages, and the monitoring KPIs you will track in production.

## Hour 4 -- Security, Governance, Responsible AI, and Exam Mastery (Domain 3 subset, ~20-25%)

**Reference:** [`../src/hour4-security/`](../src/hour4-security/)

### Learning objectives

- Design end-to-end agent and model security including access controls on grounding data
  and tuning, audit trails for model and data changes, and prompt manipulation mitigations.
- Validate adherence to Microsoft responsible AI principles and to data residency and
  movement compliance requirements for AI-powered business solutions.
- Walk into AB-100 with a clear exam plan: scoring, item formats, retake and renewal
  policy, and a final-week study path tied back to the canonical objectives doc.

### Teaching flow

| Minutes | Segment       | Notes                                                                                              |
| ------- | ------------- | -------------------------------------------------------------------------------------------------- |
| 0-10    | Opener        | Recap Hour 3; framing for the security and governance subset of Domain 3 and the responsible AI lens. |
| 10-30   | Concepts      | Subdomain 3.4 in depth: agent security, agent governance, model security, vulnerability and prompt manipulation analysis, responsible AI review, data residency and movement, access controls on grounding data and model tuning, audit trails. |
| 30-42   | Demo          | Threat-model a Copilot Studio agent end to end: identity, knowledge-source ACLs, DLP, prompt-injection defenses, audit log walkthrough, residency configuration. |
| 42-50   | Exam mastery  | AB-100 logistics, item-format guidance, exam-day pitfalls, score reports, retake and renewal rules, study path through the curated `docs/` files. |

### Subdomain coverage

- **3.4 Responsible AI, security, governance, risk management, and compliance** -- security for agents; governance for agents; model security; analysis of solution and AI vulnerabilities and mitigations including prompt manipulation; review for adherence to responsible AI principles; data residency and movement compliance validation; access controls on grounding data and model tuning; audit trails for changes to models and data.
- **Exam mastery wrap** -- AB-100 audience profile and competencies, prerequisite certifications, scoring (700 / 1000), language availability, renewal cadence, registration and accommodations through Pearson VUE, the curated study path in `docs/microsoft-certification-policies.md`, `docs/pearson-vue-registration.md`, and `docs/ab100-study-resources.md`.

### Demo

Threat-model a deployed Copilot Studio agent: walk identity and authentication, knowledge
source ACLs, Power Platform DLP, prompt manipulation defenses (system prompt design,
content filters, grounding constraints), the audit log evidence trail for model and data
changes, and the residency configuration that keeps data inside the required geography.

### Exercise

Apply the responsible AI checklist and the Subdomain 3.4 control list to your Hour 3
agent. Produce a short security and governance memo that names mitigations for prompt
manipulation, residency, access controls on grounding data and tuning, and audit trail
evidence.

## Continuing study after the course

- Canonical Microsoft objectives: [`./ab100-exam-objectives.md`](./ab100-exam-objectives.md).
- Curated AB-100 public study list: [`./ab100-study-resources.md`](./ab100-study-resources.md).
- Microsoft certification policies (Candidate Agreement, retake, renewal):
  [`./microsoft-certification-policies.md`](./microsoft-certification-policies.md).
- Pearson VUE registration walkthrough and support escalation:
  [`./pearson-vue-registration.md`](./pearson-vue-registration.md).
- Practice with the AB-100 Cert Buddy in this repo: `/ab100-practice-question`,
  `/ab100-practice-lab`, and `/ab100-study-planner`.
