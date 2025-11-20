# Segment 3: Deploying and Testing AI Solutions

**Duration:** 50 minutes | **Exam Weight:** 40-45% (Part 1)

---

## Slide 1: Title
- **Segment 3: Deploying and Testing AI Solutions**
- AB-100 Exam Domain: 40-45% (Part 1)

---

## Slide 2: Learning Objectives
By the end of this segment, you will:
- Configure monitoring and performance metrics
- Design testing strategies for AI solutions
- Implement ALM processes for all components
- Manage separate ALM for different platforms
- Create test cases using Copilot automation

---

## Slide 3: Deployment Domain Importance
**40-45% of Exam Score**

Split across Segments 3 and 4:
- Segment 3: Monitoring, Testing, ALM
- Segment 4: Security, Governance, Compliance

*Most heavily weighted domain - master this!*

---

## Slide 4: Monitoring Overview
```
┌─────────────┐
│   Metrics   │
├─────────────┤
│ Engagement  │ ← Users, sessions
│ Resolution  │ ← Self-service rate
│ Quality     │ ← CSAT, accuracy
│ Performance │ ← Latency, errors
└─────────────┘
```

---

## Slide 5: Engagement Metrics
| Metric | Target | Why It Matters |
|--------|--------|----------------|
| DAU | Growth | Adoption indicator |
| Sessions/user | 2-3 | Utility measure |
| Session duration | 3-5 min | Engagement depth |
| Return rate | >50% | Value confirmation |

---

## Slide 6: Resolution Metrics
| Metric | Target | Why It Matters |
|--------|--------|----------------|
| Self-service rate | >70% | Primary success |
| Topic recognition | >85% | NLU quality |
| Task completion | >80% | Goal achievement |
| Escalation rate | <15% | Capability gaps |

---

## Slide 7: Quality Metrics
| Metric | Target | Why It Matters |
|--------|--------|----------------|
| CSAT score | >4.0/5 | User satisfaction |
| Response accuracy | >90% | Trust building |
| Relevance score | >85% | Grounding quality |

---

## Slide 8: Performance Metrics
| Metric | Target | Why It Matters |
|--------|--------|----------------|
| Response latency | <3 sec | User experience |
| Error rate | <2% | Reliability |
| Availability | 99.9% | Business continuity |
| Token usage | Budget | Cost control |

---

## Slide 9: Application Insights Integration
```
Copilot Studio → App Insights → Dashboard
                      │
                      ├── Traces
                      ├── Exceptions
                      ├── Metrics
                      └── Alerts
```

---

## Slide 10: Testing Strategy Overview
| Type | What | When |
|------|------|------|
| Unit | Individual topics | Development |
| Integration | Component connections | Test env |
| Performance | Load/stress | Pre-prod |
| Security | Vulnerabilities | Pre-prod |
| UAT | User validation | Staging |
| A/B | Version comparison | Production |

---

## Slide 11: Test Case Design
**Components of Good Test Cases**
- Scenario description
- Pre-conditions
- Test steps
- Expected results
- Pass/fail criteria
- Data requirements

---

## Slide 12: Prompt Testing Best Practices
- Test edge cases
- Verify entity extraction
- Check fallback triggers
- Validate action calls
- Test multi-turn context
- Measure confidence scores

---

## Slide 13: End-to-End Test Scenarios
1. Happy path completion
2. Error handling
3. Escalation flow
4. Authentication
5. Data retrieval
6. Action execution

---

## Slide 14: ALM Overview
```
Dev → Test → Staging → Production
 │      │       │          │
Build  QA      UAT      Release
```

---

## Slide 15: Solution Components
**What Goes in a Solution**
- Copilot Studio agents
- Power Automate flows
- Connection references
- Environment variables
- Custom tables

**What Doesn't**
- Azure AI models
- External data
- User data

---

## Slide 16: Version Management
```
Major.Minor.Build.Revision

1.0.0.0 → 1.0.0.1 (bug fix)
1.0.0.0 → 1.1.0.0 (feature)
1.0.0.0 → 2.0.0.0 (breaking)
```

---

## Slide 17: Copilot Studio ALM
```
Export (managed) → Import → Configure
                           │
                    ├── Connections
                    ├── Environment vars
                    └── Knowledge sources
```

---

## Slide 18: Azure AI Services ALM
**Separate Process**
- Model registry (versioning)
- Training pipelines
- Evaluation gates
- Blue/green deployment
- Rollback capability

---

## Slide 19: Dynamics 365 AI ALM
- Follows D365 solution ALM
- AI features deploy with app
- Configuration exports
- Requires CoE oversight

---

## Slide 20: Pipeline Configuration
```yaml
stages:
  - Build: Export solution
  - Test: Deploy + run tests
  - Prod: Deploy (approval gate)
```

---

## Slide 21: DEMO - Deploy and Monitor
**Live demonstration**
- Export solution from Dev
- Import to Test with config
- Configure App Insights
- Create monitoring dashboard
- Set up alerts

---

## Slide 22: Test Automation with Copilot
**Use AI to Generate Tests**
- Describe scenario
- Generate test cases
- Create test data
- Validate coverage

---

## Slide 23: Common Exam Scenarios - Deploy
- "How would you test..."
- "What metrics indicate..."
- "Design ALM process for..."
- "Troubleshoot performance..."

*Look for: Component types, environment strategy*

---

## Slide 24: Exercise - ALM Strategy
**5 minutes**
- Review Adventure Works scenario
- Design environment strategy
- Define promotion criteria
- Address Azure AI model ALM

---

## Slide 25: Segment 3 Key Takeaways
- Four metric categories: engagement, resolution, quality, performance
- Self-service rate is primary success metric
- Separate ALM for Copilot Studio, Azure AI, D365
- Version solutions: Major.Minor.Build.Revision
- App Insights for monitoring

---

## Slide 26: Q&A
**Questions on Deployment Part 1?**

Next: 10-minute break, then Segment 4 - Security & Exam
