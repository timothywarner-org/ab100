# Segment 1 Exercises: Planning AI-Powered Solutions

## Exercise 1-1: Prebuilt Agent Use Cases

**Time:** 5 minutes (class) | 20 minutes (self-study)

### Scenario

Contoso Manufacturing wants to improve operational efficiency using AI. They have:
- 500 employees across 3 facilities
- Dynamics 365 Supply Chain Management
- Microsoft 365 E5 licenses
- Limited AI development expertise

Leadership has identified three pain points:
1. Production planning takes 2 days of manual work each week
2. Equipment maintenance is reactive, causing unplanned downtime
3. Customer order inquiries overwhelm the service team

### Task

For each pain point, recommend whether to use a **prebuilt agent**, **custom agent**, or **extend existing Copilot**. Justify your decision.

### Solution Framework

| Pain Point | Recommendation | Justification |
|------------|----------------|---------------|
| Production planning | ? | Consider: Complexity, data sources, customization needed |
| Equipment maintenance | ? | Consider: Predictive capabilities, integration requirements |
| Order inquiries | ? | Consider: Volume, standardization, channel requirements |

### Key Decision Factors

**Use Prebuilt Agent When:**
- Standard business process
- Quick deployment priority
- Limited customization needed
- Out-of-box integrations sufficient

**Build Custom Agent When:**
- Unique business logic
- Complex multi-step workflows
- Proprietary data/processes
- High differentiation value

**Extend Existing Copilot When:**
- Already using M365/D365 Copilot
- Need additional data sources
- Want consistent user experience
- Moderate customization needed

---

## Exercise 1-1 Solution Guide

### Pain Point 1: Production Planning

**Recommendation:** Extend D365 Supply Chain Copilot

**Justification:**
- D365 SCM already has demand forecasting and planning capabilities
- Copilot in SCM can be extended with custom prompts
- Leverages existing data in Dataverse
- 2-day process suggests complex multi-source analysis

### Pain Point 2: Equipment Maintenance

**Recommendation:** Custom agent in Copilot Studio + Azure AI

**Justification:**
- Predictive maintenance requires custom ML models
- Need integration with IoT sensors
- Industry-specific patterns
- High ROI potential justifies development investment

### Pain Point 3: Order Inquiries

**Recommendation:** Prebuilt agent (Copilot Studio template)

**Justification:**
- Standard customer service scenario
- High volume = quick win
- Templates available for order status
- Can deploy within weeks

---

## Extended Exercise (Self-Study)

### Part A: ROI Analysis

Calculate the ROI for the equipment maintenance solution:

**Given:**
- Current unplanned downtime: 200 hours/year
- Cost per hour of downtime: $5,000
- Implementation cost: $150,000
- Annual operating cost: $30,000
- Expected downtime reduction: 60%

**Calculate:**
1. Annual benefit
2. Year 1 ROI
3. Payback period

### Part B: Cloud Adoption Framework

Map Contoso's AI initiatives to CAF phases:

1. **Strategy**: What business outcomes?
2. **Plan**: What resources needed?
3. **Ready**: What infrastructure?
4. **Adopt**: Implementation approach?
5. **Govern**: Policies required?
6. **Manage**: Ongoing operations?

### Part C: Data Quality Assessment

Evaluate Contoso's data readiness using the five dimensions:

| Dimension | Assessment Questions |
|-----------|---------------------|
| Accuracy | Is production data validated? Sensor calibration? |
| Relevance | Do they have right data for predictions? |
| Timeliness | How current is equipment telemetry? |
| Cleanliness | Duplicates? Missing values? |
| Availability | Can AI access all needed sources? |

---

## Exam-Style Question

**Question:** A manufacturing company wants to reduce equipment downtime using AI. They have IoT sensors on critical machines and use D365 Supply Chain Management. What is the BEST approach?

A. Use the prebuilt Copilot in D365 SCM without modification
B. Build a custom predictive maintenance model in Azure ML and create a Copilot Studio agent
C. Purchase a third-party maintenance solution
D. Implement Power Automate flows to alert on sensor thresholds

**Answer:** B

**Explanation:** Predictive maintenance requires custom ML models trained on their specific equipment patterns. While D365 SCM Copilot is useful for demand forecasting, equipment failure prediction needs custom models. The Copilot Studio agent provides the conversational interface for maintenance teams to query predictions and receive proactive alerts.
