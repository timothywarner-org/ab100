# Segment 2: Designing AI-Powered Business Solutions

**Duration:** 50 minutes | **Exam Weight:** 25-30%

---

## Slide 1: Title
- **Segment 2: Designing AI-Powered Business Solutions**
- AB-100 Exam Domain: 25-30%

---

## Slide 2: Learning Objectives
By the end of this segment, you will:
- Distinguish between agent types (task, autonomous, prompt/response)
- Design Dynamics 365 AI integrations
- Create Copilot Studio topics with fallback
- Apply Well-Architected Framework for AI
- Implement extensibility with MCP

---

## Slide 3: Agent Taxonomy
**Three Agent Types (Exam Critical)**

| Type | Purpose | Example |
|------|---------|---------|
| Task | Automate workflows | Invoice processing |
| Autonomous | Independent decisions | Lead qualification |
| Prompt/Response | Conversational | Customer support |

---

## Slide 4: Task Agents
**Characteristics**
- Single-purpose focus
- Clear input/output
- Deterministic behavior
- Measurable outcomes

*Use when: Well-defined, repeatable process*

---

## Slide 5: Autonomous Agents
**Characteristics**
- Goal-oriented
- Self-correcting
- Context-aware
- Multi-step execution

*Use when: Complex decisions, proactive actions*

---

## Slide 6: Prompt/Response Agents
**Characteristics**
- Natural language understanding
- Context maintenance
- Dynamic responses
- Multi-turn conversations

*Use when: Interactive user assistance*

---

## Slide 7: Dynamics 365 AI Integration Map
```
┌─────────────┬─────────────┬─────────────┐
│   Sales     │   Service   │   Finance   │
├─────────────┼─────────────┼─────────────┤
│ Lead score  │ Case route  │ Cash flow   │
│ Opportunity │ Knowledge   │ Payment     │
│ Insights    │ Sentiment   │ Predictions │
└─────────────┴─────────────┴─────────────┘
         │           │           │
         └───────────┼───────────┘
                     │
              ┌──────┴──────┐
              │ Supply Chain│
              ├─────────────┤
              │ Demand      │
              │ Inventory   │
              └─────────────┘
```

---

## Slide 8: D365 Sales AI Features
- Predictive Lead Scoring
- Predictive Opportunity Scoring
- Conversation Intelligence
- Relationship Analytics
- Sales Insights

---

## Slide 9: D365 Customer Service AI
- Intelligent Case Routing
- Knowledge Suggestions
- Sentiment Analysis
- Conversation Summarization
- Copilot for Agents

---

## Slide 10: D365 Finance & SCM AI
**Finance**
- Cash Flow Forecasting
- Customer Payment Predictions
- Budget Proposals

**Supply Chain**
- Demand Forecasting
- Inventory Optimization
- Supply Risk Assessment

---

## Slide 11: Copilot Studio Topic Structure
```
Topic: [Name]
├── Trigger Phrases
├── Entities
├── Conversation Flow
│   ├── Questions
│   ├── Conditions
│   └── Actions
└── Fallback
```

---

## Slide 12: Topic Triggers
**Best Practices**
- 5-10 trigger phrases
- Vary phrasing naturally
- Include common misspellings
- Cover different intents

```
"Check order status"
"Where is my order?"
"Track package"
"Order #12345 status"
```

---

## Slide 13: Entities in Topics
**Types**
- Prebuilt: Date, Number, Email
- Custom: OrderNumber, ProductSKU
- Closed list: Categories

**Slot Filling**
- Extract from utterance
- Prompt if missing

---

## Slide 14: Fallback Design
**Triggers**
- Unrecognized intent
- Low confidence (<0.4)
- User frustration
- System errors

**Actions**
- Clarify → Suggest → Escalate

---

## Slide 15: NLP Options Comparison
| Approach | Best For | Setting |
|----------|----------|---------|
| Standard | Keyword matching | Classic |
| CLU | Intent classification | Azure CLU |
| Generative | Open-ended | Gen answers |

---

## Slide 16: Power Platform Well-Architected
**Six Pillars for AI Workloads**

| Pillar | AI Focus |
|--------|----------|
| Reliability | Model availability |
| Security | Prompt protection |
| Cost | Model selection |
| Ops Excellence | ALM, monitoring |
| Performance | Latency, caching |
| Experience | Feedback loops |

---

## Slide 17: Extensibility Options
```
┌─────────────────┐
│ Copilot Studio  │
├─────────────────┤
│ MCP Servers     │◄── External tools
│ Custom Actions  │◄── Power Automate
│ Connectors      │◄── APIs
│ Azure AI        │◄── Custom models
└─────────────────┘
```

---

## Slide 18: Model Context Protocol (MCP)
**Components**
- Resources: Data sources
- Tools: Functions to invoke
- Prompts: Reusable templates

*Enables dynamic tool discovery*

---

## Slide 19: MCP Configuration
```json
{
  "name": "finance-tools",
  "tools": [
    {
      "name": "get_aging_report",
      "description": "Get AR aging"
    }
  ]
}
```

---

## Slide 20: Computer Use Automation
- Automate legacy UI interactions
- Screenshot analysis
- Click/type actions
- *Use when: No API available*

---

## Slide 21: DEMO - Multi-Agent Build
**Live demonstration**
- Create Copilot Studio agent
- Design topics with fallback
- Add D365 Finance knowledge
- Configure MCP connection

---

## Slide 22: Design Patterns for Exam
| Pattern | Scenario | Solution |
|---------|----------|----------|
| Knowledge Q&A | Help desk | Gen answers + KB |
| Task execution | Order status | Topic + connector |
| Multi-step | Approval | Autonomous agent |
| Handoff | Escalation | Fallback + routing |

---

## Slide 23: Exercise - Business Process Design
**5 minutes**
- Review Northwind lead qualification scenario
- Design agent type and architecture
- Specify D365 integration points
- Create one topic outline

---

## Slide 24: Segment 2 Key Takeaways
- Know three agent types and when to use
- D365 apps have specific AI features
- Topic design: triggers, entities, flow, fallback
- Well-Architected applies to AI
- MCP enables external tool integration

---

## Slide 25: Q&A
**Questions on Design Domain?**

Next: 10-minute break, then Segment 3 - Deploy
