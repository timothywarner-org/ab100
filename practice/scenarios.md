# Practice Scenarios

Test your knowledge with these exam-style scenarios.

---

## Scenario 1: Multi-Agent Customer Service

**Background**: Contoso Electronics wants to implement an AI-powered customer service solution that handles product inquiries, order tracking, and technical support across chat, voice, and email channels.

**Questions**:

1. Which platforms should you recommend for this multi-agent solution?
   - Consider: Copilot Studio, D365 Customer Service, Azure AI

2. How should knowledge sources be organized for different agent types?

3. What metrics should be monitored to measure success?

4. How would you design the fallback strategy when agents cannot resolve issues?

<details>
<summary>Discussion Points</summary>

- Use D365 Customer Service for omnichannel routing and case management
- Copilot Studio for conversational AI with generative answers
- Separate knowledge bases by domain (product, orders, technical)
- Monitor: Resolution rate, CSAT, average handle time, escalation rate
- Fallback: Clarify → Suggest topics → Human handoff with context

</details>

---

## Scenario 2: ROI Analysis for Sales AI

**Background**: A company is evaluating implementing Copilot for Sales. Current state:
- 50 sales reps
- Average 4 hours/week on admin tasks
- Average deal cycle: 45 days
- Win rate: 25%

**Questions**:

1. What ROI criteria should be included in the analysis?

2. Calculate potential time savings per year.

3. What qualitative benefits should be considered?

4. Should they build, buy, or extend?

<details>
<summary>Discussion Points</summary>

- ROI criteria: Time savings, increased win rate, shorter cycle time, TCO
- Time savings: 50 reps × 4 hrs × 52 weeks = 10,400 hours/year
- Qualitative: Better customer insights, improved forecasting, rep satisfaction
- Extend: Copilot for Sales extends M365 Copilot with CRM integration

</details>

---

## Scenario 3: Data Grounding Design

**Background**: A healthcare organization wants to implement an AI assistant for patient inquiries. Data sources include:
- Patient portal content
- Appointment scheduling system
- Provider directory
- FAQ documents

**Questions**:

1. How would you assess data quality for each source?

2. What compliance considerations apply?

3. How should you design access controls?

4. What chunking strategy is appropriate for FAQ documents?

<details>
<summary>Discussion Points</summary>

- Assess: Accuracy (clinical review), timeliness (update frequency), availability (API reliability)
- Compliance: HIPAA, data residency, PHI handling
- Access: Role-based filtering, patient context authentication
- Chunking: Semantic by question/answer pairs to maintain context

</details>

---

## Scenario 4: ALM for Copilot Studio Agent

**Background**: A financial services company has developed a Copilot Studio agent for investment inquiries. They need to manage deployments across dev, test, and production environments with proper governance.

**Questions**:

1. What components should be included in the solution?

2. How should secrets and connections be managed across environments?

3. What approval process should be implemented?

4. How would you handle a rollback if issues arise in production?

<details>
<summary>Discussion Points</summary>

- Components: Agent config, topics, flows, connectors, knowledge sources, env variables
- Secrets: Connection references, environment variables, Azure Key Vault integration
- Approvals: PR reviews for dev, QA sign-off for test, change board for prod
- Rollback: Maintain previous solution version, import managed solution

</details>

---

## Scenario 5: Prompt Injection Defense

**Background**: A retail company's customer service agent has been experiencing attempts to manipulate the AI through prompt injection attacks.

**Questions**:

1. What types of prompt injection should you defend against?

2. What technical controls can be implemented?

3. How should these attacks be monitored?

4. What responsible AI principles apply?

<details>
<summary>Discussion Points</summary>

- Types: Direct injection, indirect through data, jailbreaking attempts
- Controls: Input sanitization, system prompt isolation, output filtering, rate limiting
- Monitoring: Pattern detection, anomaly alerts, transcript review, security dashboards
- Principles: Reliability & Safety (prevent harmful outputs), Transparency (document limitations)

</details>

---

## Scenario 6: Model Router Implementation

**Background**: An enterprise has multiple AI use cases with varying complexity:
- Simple FAQ (80% of queries)
- Product recommendations (15%)
- Complex troubleshooting (5%)

**Questions**:

1. What model should handle each use case?

2. How would you implement routing logic?

3. What cost savings could be achieved?

4. How would you handle misrouted requests?

<details>
<summary>Discussion Points</summary>

- Models: GPT-4o-mini for FAQ, GPT-4o for recommendations, GPT-4 for complex
- Routing: Classifier-based on query length, keywords, detected complexity
- Savings: Compare all-GPT-4 vs routed (typically 70-80% savings)
- Misroutes: Confidence scoring, escalation paths, feedback loop for improvement

</details>

---

## Scenario 7: Testing Strategy for D365 AI

**Background**: A manufacturing company is implementing AI features across D365 Finance (cash flow forecasting) and D365 Supply Chain (demand forecasting).

**Questions**:

1. What test types are needed?

2. How would you validate the prediction models?

3. What end-to-end scenarios should be tested?

4. How should test data be managed?

<details>
<summary>Discussion Points</summary>

- Test types: Unit (calculations), integration (data flow), system (predictions), UAT
- Validation: Historical data comparison, accuracy metrics, domain expert review
- E2E scenarios: Forecast generation → financial planning → procurement → fulfillment
- Test data: Anonymized production data, synthetic edge cases, version control

</details>

---

## Scenario 8: Responsible AI Implementation

**Background**: A government agency wants to implement an AI-powered citizen services agent. They need to ensure the solution meets responsible AI standards.

**Questions**:

1. How would you address fairness concerns?

2. What transparency measures are needed?

3. How should you handle sensitive topics?

4. What governance should be established?

<details>
<summary>Discussion Points</summary>

- Fairness: Test across demographics, bias detection, diverse training data
- Transparency: Clear AI disclosure, explain limitations, provide human alternatives
- Sensitive topics: Guardrails for political/legal/health topics, clear handoff procedures
- Governance: Ethics review board, regular audits, incident response, user feedback process

</details>

---

## Study Tips

1. **Read each scenario carefully** - Identify all requirements
2. **Consider the full picture** - Think about design, implementation, and operations
3. **Apply frameworks** - Use Well-Architected, Responsible AI, Cloud Adoption
4. **Think about trade-offs** - Most solutions involve balancing factors
5. **Remember governance** - Security and compliance are always relevant
