# Segment 1: Planning AI-Powered Business Solutions

**Duration:** 50 minutes | **Exam Weight:** 25-30%

---

## Slide 1: Title
- **Segment 1: Planning AI-Powered Business Solutions**
- AB-100 Exam Domain: 25-30%
- Tim Warner, Microsoft MVP

---

## Slide 2: Learning Objectives
By the end of this segment, you will:
- Analyze business requirements for AI agent implementation
- Evaluate data quality for AI grounding
- Apply Cloud Adoption Framework for AI projects
- Make build vs buy vs extend decisions
- Calculate ROI for AI investments

---

## Slide 3: Exam Strategy
- **Pass AB-100 while building real enterprise AI**
- Course covers 100% of exam objectives
- Real-world demos reinforce concepts
- Practice questions throughout
- GitHub repo: github.com/timothywarner-org/ab100

---

## Slide 4: AB-100 Exam Blueprint
| Domain | Weight | Key Topics |
|--------|--------|------------|
| Planning | 25-30% | Requirements, ROI, CAF |
| Designing | 25-30% | Agents, D365, extensibility |
| Deploying | 40-45% | ALM, security, monitoring |

---

## Slide 5: Analyze Requirements
**Agent Assessment for Business Scenarios**
- Task automation opportunities
- Data analytics needs
- Decision-making support
- Process optimization

---

## Slide 6: When to Use AI Agents
| Scenario | Agent Fit | Example |
|----------|-----------|---------|
| Repetitive tasks | High | Invoice processing |
| Data synthesis | High | Report generation |
| Conversational | High | Customer support |
| Creative work | Medium | Content drafting |
| Physical tasks | Low | Manufacturing |

---

## Slide 7: Data Quality Dimensions
**The Five Pillars of AI-Ready Data**

```
        Accuracy
           │
    ┌──────┼──────┐
    │      │      │
Relevance  │  Timeliness
    │      │      │
    └──────┼──────┘
           │
     Cleanliness
           │
      Availability
```

---

## Slide 8: Data Quality Details
| Dimension | Definition | Assessment |
|-----------|------------|------------|
| Accuracy | Correct, reliable | Error rate < 2% |
| Relevance | Applicable to use case | Mapped to requirements |
| Timeliness | Current, updated | Refresh frequency |
| Cleanliness | No errors/duplicates | Data profiling |
| Availability | Accessible | API/connector ready |

---

## Slide 9: Cloud Adoption Framework for AI
**Six Phases of AI Adoption**

Strategy → Plan → Ready → Adopt → Govern → Manage

---

## Slide 10: CAF Strategy Phase
- Define business outcomes
- Identify AI opportunities
- Build business case
- Secure executive sponsorship
- *Exam tip: Know strategy deliverables*

---

## Slide 11: CAF Ready Phase
- Landing zone setup
- Networking and security
- Identity configuration
- Monitoring foundation
- *Exam tip: Infrastructure prerequisites*

---

## Slide 12: CAF Govern Phase
- AI policies and standards
- Risk management
- Compliance requirements
- Cost management
- *Exam tip: Governance before deployment*

---

## Slide 13: Multi-Agent Platform Options
| Platform | Best For | Key Capability |
|----------|----------|----------------|
| M365 Copilot | Enterprise productivity | M365 integration |
| Copilot Studio | Custom agents | Topics, actions |
| Azure AI Foundry | Advanced AI | Custom models |

---

## Slide 14: Microsoft 365 Copilot
- Built-in AI across M365 apps
- Enterprise data grounding (Graph)
- Extensible with plugins
- *Use when: Standard productivity scenarios*

---

## Slide 15: Copilot Studio
- Custom conversational agents
- Topics with triggers and flows
- Knowledge integration
- Multi-channel deployment
- *Use when: Custom business processes*

---

## Slide 16: Azure AI Foundry
- Custom model development
- Fine-tuning capabilities
- Prompt flow orchestration
- Enterprise deployment
- *Use when: Advanced AI requirements*

---

## Slide 17: Build vs Buy vs Extend
**Decision Framework**

```
┌─────────────────┐
│ Unique process? │
└────────┬────────┘
         │
    Yes  │  No
    ▼    │  ▼
  BUILD  │  ┌─────────────────┐
         │  │ Existing tool?  │
         │  └────────┬────────┘
         │      Yes  │  No
         │      ▼    │  ▼
         │   EXTEND  │  BUY
```

---

## Slide 18: Build vs Buy vs Extend Details
| Factor | Build | Buy | Extend |
|--------|-------|-----|--------|
| Time | Months | Days | Weeks |
| Cost | High | Medium | Low |
| Control | Full | Limited | Moderate |
| Maintenance | Internal | Vendor | Shared |

---

## Slide 19: Model Router Architecture
**Cost-Optimized Request Routing**

```
Request → Router → GPT-4o (complex)
                 → GPT-4o-mini (standard)
                 → Cache (simple)
```

---

## Slide 20: ROI Formula
```
ROI = ((Benefits - Costs) / Costs) × 100
```

**Cost Components**
- Licensing
- Implementation
- Operations
- Training

**Benefit Categories**
- Hard savings
- Soft savings
- Revenue
- Risk reduction

---

## Slide 21: DEMO - ROI Calculator
**Live demonstration**
- Design model router
- Calculate TCO
- Determine ROI
- Sensitivity analysis

---

## Slide 22: Common Exam Scenarios - Planning
- "Company wants to improve X with AI..."
- Look for: Data quality issues
- Look for: Build/buy/extend signals
- Look for: ROI justification needs
- *Exam tip: Read scenario carefully for clues*

---

## Slide 23: Exercise - Prebuilt Agent Use Cases
**5 minutes**
- Review Contoso Manufacturing scenario
- Recommend agent approach for each pain point
- Justify your decisions

---

## Slide 24: Segment 1 Key Takeaways
- Assess data quality across 5 dimensions
- Follow CAF phases for AI adoption
- Use decision framework for build/buy/extend
- Calculate ROI with TCO analysis
- Know platform capabilities

---

## Slide 25: Q&A
**Questions on Planning Domain?**

Next: 10-minute break, then Segment 2 - Design
