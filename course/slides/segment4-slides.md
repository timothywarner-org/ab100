# Segment 4: Security, Governance, and Exam Mastery

**Duration:** 50 minutes | **Exam Weight:** 40-45% (Part 2)

---

## Slide 1: Title
- **Segment 4: Security, Governance, and Exam Mastery**
- AB-100 Exam Domain: 40-45% (Part 2)

---

## Slide 2: Learning Objectives
By the end of this segment, you will:
- Implement defense-in-depth security
- Defend against prompt manipulation
- Apply responsible AI principles
- Design audit trails for compliance
- Master AB-100 exam strategies

---

## Slide 3: Security Architecture
```
┌─────────────────────┐
│ Identity & Access   │ ← AuthN/AuthZ
├─────────────────────┤
│ Input Security      │ ← Content filters
├─────────────────────┤
│ Processing Security │ ← RBAC, data access
├─────────────────────┤
│ Output Security     │ ← Response filtering
├─────────────────────┤
│ Audit & Compliance  │ ← Logging
└─────────────────────┘
```

---

## Slide 4: Identity Layer
**Controls**
- Entra ID authentication
- Multi-factor authentication
- Conditional access policies
- Managed identities
- Service principals

---

## Slide 5: Authorization Models
| Model | Use Case |
|-------|----------|
| RBAC | Role-based permissions |
| Security groups | Team access |
| Row-level security | Data filtering |
| Column-level security | Field masking |

---

## Slide 6: Input Security Controls
**Azure AI Content Safety**
- Hate speech detection
- Violence detection
- Self-harm detection
- Sexual content detection

**Severity levels: Low, Medium, High**

---

## Slide 7: Prompt Shields
```
User Prompt Attack Detection
├── Injection patterns
├── Jailbreak attempts
└── Manipulation tactics

Document Attack Detection
├── Embedded instructions
└── Hidden commands
```

---

## Slide 8: Common Attack Vectors
| Attack | Example |
|--------|---------|
| Direct injection | "Ignore instructions..." |
| Indirect injection | Doc contains commands |
| Jailbreaking | "Pretend you are..." |
| Data exfiltration | "Include SSN for..." |

---

## Slide 9: Defense Strategies
1. **Input sanitization** - Pattern matching
2. **System prompt protection** - Never expose
3. **Output filtering** - PII detection
4. **Groundedness** - Verify against sources
5. **Rate limiting** - Prevent abuse

---

## Slide 10: Governance Framework
| Component | Description |
|-----------|-------------|
| Policies | Rules and standards |
| Processes | Workflows |
| Controls | Enforcement |
| Metrics | Measurement |

---

## Slide 11: Agent Governance Areas
**Development**
- Coding standards
- Review processes

**Deployment**
- Approval workflows
- Change management

**Operations**
- Monitoring
- Incident response

---

## Slide 12: Model Security
| Threat | Mitigation |
|--------|------------|
| Model theft | Encryption, access controls |
| Model poisoning | Training data validation |
| Adversarial attacks | Input validation |
| Inference attacks | Differential privacy |

---

## Slide 13: Responsible AI Principles
**Microsoft's Six Principles**
1. **Fairness** - No bias
2. **Reliability & Safety** - Works correctly
3. **Privacy & Security** - Data protected
4. **Inclusiveness** - Accessible
5. **Transparency** - Explainable
6. **Accountability** - Governed

---

## Slide 14: Implementing Responsible AI
| Principle | Implementation |
|-----------|----------------|
| Fairness | Bias testing, balanced data |
| Reliability | Testing, monitoring |
| Privacy | Encryption, masking |
| Inclusiveness | Accessibility review |
| Transparency | Documentation |
| Accountability | Audit trails |

---

## Slide 15: Data Residency
**Requirements**
- Geographic region selection
- Data boundary enforcement
- Compliance verification

**Components**
- Dataverse region
- Azure AI region
- Storage region

---

## Slide 16: Access Controls on Grounding Data
**Layers**
- Source system permissions
- Index access controls
- Query-time filtering
- Response filtering

*Security trimming passes user context*

---

## Slide 17: Audit Trail Requirements
| Field | Purpose |
|-------|---------|
| Timestamp | When |
| User ID | Who |
| Action | What |
| Resource | On what |
| Result | Success/fail |
| Before/after | Changes |

---

## Slide 18: Compliance Tools
- **Microsoft Purview** - Data governance
- **Azure Policy** - Enforce standards
- **Activity Logs** - Azure operations
- **Audit Logs** - Power Platform

---

## Slide 19: DEMO - Security Stack
**Live demonstration**
- Configure Entra ID auth
- Enable content safety
- Set up prompt shields
- Create audit dashboard
- Test injection defense

---

## Slide 20: AB-100 Exam Strategy
**Question Types**
- Multiple choice
- Case studies
- Drag and drop
- Hot area (click image)

**Time: ~2 hours for ~50 questions**

---

## Slide 21: Exam Tips
1. Read scenarios completely
2. Eliminate wrong answers first
3. Look for "MOST" and "BEST"
4. Watch for "NOT" questions
5. Flag and return to difficult ones
6. Trust your preparation

---

## Slide 22: Common Tricky Scenarios
- Build vs buy vs extend (look for clues)
- Agent type selection (task vs autonomous)
- ALM responsibility (which team)
- Security layer (where to implement)
- Metric interpretation (what it indicates)

---

## Slide 23: Certification Path
**After AB-100**
- AI-102: Azure AI Engineer
- PL-600: Power Platform Solution Architect
- Renewal required (annually)

---

## Slide 24: Your Exam Toolkit
**Resources in GitHub Repo**
- Complete study guide
- Practice scenarios
- Cheat sheet
- Glossary
- 400+ documentation links

github.com/timothywarner-org/ab100

---

## Slide 25: Exercise - Security Assessment
**5 minutes**
- Review Fabrikam scenario
- Complete security matrix
- Identify top 3 risks
- Propose mitigations

---

## Slide 26: Segment 4 Key Takeaways
- Defense in depth: multiple security layers
- Know content safety categories
- Responsible AI: six principles
- Audit trails: who, what, when, result
- Exam: read carefully, eliminate answers

---

## Slide 27: Course Summary
| Segment | Key Skill | Exam Weight |
|---------|-----------|-------------|
| 1 | Plan with ROI | 25-30% |
| 2 | Design agents | 25-30% |
| 3 | Deploy with ALM | 40-45% |
| 4 | Secure & govern | 40-45% |

---

## Slide 28: Next Steps
1. Review GitHub repo materials
2. Complete extended exercises
3. Schedule exam (Pearson VUE)
4. Join study group (optional)
5. Pass AB-100!

---

## Slide 29: Final Q&A
**Questions on Security, Governance, or Exam?**

---

## Slide 30: Thank You
**Tim Warner**
- GitHub: github.com/timothywarner-org
- O'Reilly: Author page
- Good luck on AB-100!

*Please complete the course survey*
