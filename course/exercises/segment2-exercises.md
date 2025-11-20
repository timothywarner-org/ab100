# Segment 2 Exercises: Designing AI-Powered Solutions

## Exercise 2-1: Business Process AI Design

**Time:** 5 minutes (class) | 20 minutes (self-study)

### Scenario

Northwind Traders' sales team struggles with lead qualification. Currently:
- Sales reps manually review 100+ leads daily
- Average time per lead: 15 minutes
- Conversion rate: 5%
- High-value leads often missed due to volume

They want an AI solution that:
- Automatically scores leads
- Recommends next best actions
- Alerts reps to high-priority opportunities
- Learns from successful conversions

### Task

Design the AI components for this solution. Specify:
1. Agent type(s) needed
2. Dynamics 365 integration points
3. Copilot Studio topic design (one topic)
4. Knowledge sources required

### Design Template

```
Agent Architecture
├── Agent Type: [Task / Autonomous / Prompt-Response]
├── Primary Platform: [Copilot Studio / D365 / Custom]
│
├── D365 Integration
│   ├── App: [Sales / Service / etc.]
│   ├── Entities: [Lead, Opportunity, etc.]
│   └── AI Features: [Predictive scoring, etc.]
│
├── Topic Design: "Check Lead Score"
│   ├── Triggers: [list phrases]
│   ├── Entities: [list entities]
│   ├── Flow: [describe steps]
│   └── Actions: [what it calls]
│
└── Knowledge Sources
    ├── Source 1: [type and content]
    └── Source 2: [type and content]
```

---

## Exercise 2-1 Solution Guide

### Agent Architecture

```
Agent Architecture
├── Agent Type: Autonomous Agent
│   (Makes decisions, proactive notifications, learns from outcomes)
│
├── Primary Platform: Copilot Studio + D365 Sales
│
├── D365 Sales Integration
│   ├── App: Dynamics 365 Sales
│   ├── Entities:
│   │   ├── Lead (scoring target)
│   │   ├── Opportunity (conversion tracking)
│   │   ├── Account (firmographic data)
│   │   └── Activity (engagement signals)
│   └── AI Features:
│       ├── Predictive Lead Scoring
│       ├── Relationship Analytics
│       └── Conversation Intelligence
│
├── Topic Design: "Check Lead Score"
│   ├── Triggers:
│   │   ├── "What's the score for [lead]?"
│   │   ├── "Should I pursue this lead?"
│   │   ├── "Lead priority"
│   │   └── "Qualify [company name]"
│   ├── Entities:
│   │   ├── LeadName (from Lead entity)
│   │   └── CompanyName (custom entity)
│   ├── Flow:
│   │   1. Identify lead (ask if not provided)
│   │   2. Call D365 Predictive Scoring API
│   │   3. Get contributing factors
│   │   4. Retrieve similar won deals
│   │   5. Generate recommendation
│   │   6. Offer next actions
│   └── Actions:
│       ├── Power Automate: Get lead details
│       ├── D365 API: Predictive score
│       └── Azure OpenAI: Generate insights
│
└── Knowledge Sources
    ├── Dataverse: Lead, Opportunity, Account data
    ├── SharePoint: Sales playbooks, objection handling
    └── Web: Company news, LinkedIn (via connector)
```

### Why Autonomous Agent?

- **Proactive**: Alerts reps without being asked
- **Learning**: Improves from conversion outcomes
- **Decision-making**: Recommends actions independently
- **Multi-step**: Scores → analyzes → recommends → follows up

---

## Extended Exercise (Self-Study)

### Part A: Complete Topic Set

Design three additional topics for the Lead Qualification Agent:

1. **"Get Next Best Action"**
   - What should sales rep do next?
   - Consider: lead score, recent activity, buyer stage

2. **"Compare to Won Deals"**
   - Show similar leads that converted
   - What made them successful?

3. **"Why This Score?"**
   - Explain scoring factors
   - What would improve the score?

### Part B: MCP Integration Design

Design an MCP server for external data enrichment:

```json
{
  "name": "lead-enrichment",
  "tools": [
    {
      "name": "?",
      "description": "?"
    }
  ]
}
```

Consider:
- Company financials
- Technology stack
- Recent news
- Social signals

### Part C: Agent Flow Diagram

Create a visual flow for the autonomous lead scoring process:

```
[Trigger] → [?] → [?] → [?] → [Output]
```

Include:
- When does it run? (scheduled, event-driven)
- What decisions does it make?
- How does it learn?

---

## Exam-Style Question

**Question:** A company wants to design an AI agent that automatically qualifies leads, notifies sales reps of high-priority opportunities, and learns from conversion outcomes. Which agent type is MOST appropriate?

A. Task agent
B. Autonomous agent
C. Prompt and response agent
D. Declarative agent

**Answer:** B

**Explanation:** Autonomous agents are designed for:
- Independent decision-making (qualifying leads)
- Proactive notifications (alerting sales reps)
- Self-improvement (learning from outcomes)
- Goal-oriented behavior (maximize conversions)

Task agents are for single-purpose workflows. Prompt/response agents are conversational. Declarative agents are for M365 Copilot customization.
