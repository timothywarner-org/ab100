# Segment 3 Exercises: Deploying and Testing AI Solutions

## Exercise 3-1: ALM Strategy

**Time:** 5 minutes (class) | 20 minutes (self-study)

### Scenario

Adventure Works is deploying an AI-powered customer service solution with:
- Copilot Studio agent for customer inquiries
- Custom Azure OpenAI model fine-tuned on product data
- Power Automate flows for case creation
- Dynamics 365 Customer Service integration
- Knowledge base in SharePoint

They have three environments: Dev, Test, Production

### Task

Design an ALM strategy that addresses:
1. What goes in each environment?
2. How do you promote between environments?
3. What testing occurs at each stage?
4. How do you handle the custom Azure OpenAI model?

### ALM Strategy Template

```
┌─────────────────────────────────────────────────────┐
│                    DEVELOPMENT                       │
├─────────────────────────────────────────────────────┤
│ Components:                                          │
│ Testing:                                             │
│ Promotion criteria:                                  │
└──────────────────────┬──────────────────────────────┘
                       │ [How?]
                       ▼
┌─────────────────────────────────────────────────────┐
│                      TEST                            │
├─────────────────────────────────────────────────────┤
│ Components:                                          │
│ Testing:                                             │
│ Promotion criteria:                                  │
└──────────────────────┬──────────────────────────────┘
                       │ [How?]
                       ▼
┌─────────────────────────────────────────────────────┐
│                   PRODUCTION                         │
├─────────────────────────────────────────────────────┤
│ Components:                                          │
│ Testing:                                             │
│ Monitoring:                                          │
└─────────────────────────────────────────────────────┘
```

---

## Exercise 3-1 Solution Guide

### Complete ALM Strategy

```
┌─────────────────────────────────────────────────────┐
│                    DEVELOPMENT                       │
├─────────────────────────────────────────────────────┤
│ Components:                                          │
│ • Copilot Studio agent (unmanaged solution)         │
│ • Power Automate flows (unmanaged)                  │
│ • Connection references (dev credentials)           │
│ • Environment variables (dev values)                │
│ • Azure OpenAI: Dev deployment (fine-tuned model)   │
│                                                      │
│ Testing:                                             │
│ • Unit testing individual topics                    │
│ • Flow testing with test data                       │
│ • Model accuracy testing                            │
│                                                      │
│ Promotion criteria:                                  │
│ • All topics functional                             │
│ • Code review completed                             │
│ • Model accuracy > 85%                              │
└──────────────────────┬──────────────────────────────┘
                       │ Export managed solution
                       │ Deploy model to Test
                       ▼
┌─────────────────────────────────────────────────────┐
│                      TEST                            │
├─────────────────────────────────────────────────────┤
│ Components:                                          │
│ • Copilot Studio agent (managed solution)           │
│ • Power Automate flows (managed)                    │
│ • Connection references (test credentials)          │
│ • Environment variables (test values)               │
│ • Azure OpenAI: Test deployment                     │
│ • D365 Customer Service (test data)                 │
│                                                      │
│ Testing:                                             │
│ • Integration testing (all components)              │
│ • Performance testing (load simulation)             │
│ • Security testing (penetration tests)              │
│ • UAT with stakeholders                             │
│                                                      │
│ Promotion criteria:                                  │
│ • All integration tests pass                        │
│ • Performance meets SLAs (<3s response)             │
│ • Security scan clean                               │
│ • UAT sign-off obtained                             │
└──────────────────────┬──────────────────────────────┘
                       │ Import managed solution
                       │ Promote model deployment
                       │ (Requires approval gate)
                       ▼
┌─────────────────────────────────────────────────────┐
│                   PRODUCTION                         │
├─────────────────────────────────────────────────────┤
│ Components:                                          │
│ • Copilot Studio agent (managed, locked)            │
│ • Power Automate flows (managed)                    │
│ • Connection references (prod credentials)          │
│ • Environment variables (prod values)               │
│ • Azure OpenAI: Prod deployment (blue/green)        │
│ • D365 Customer Service (production)                │
│                                                      │
│ Testing:                                             │
│ • Smoke tests post-deployment                       │
│ • A/B testing for new features                      │
│                                                      │
│ Monitoring:                                          │
│ • Application Insights dashboards                   │
│ • Alert on error rate > 2%                          │
│ • Daily metrics review                              │
│ • Weekly model performance review                   │
└─────────────────────────────────────────────────────┘
```

### Azure OpenAI Model ALM

**Separate from Power Platform ALM:**

1. **Model Registry** (Azure ML)
   - Version models with metadata
   - Track training data versions
   - Document hyperparameters

2. **Deployment Strategy**
   - Blue/green deployments
   - Gradual rollout (10% → 50% → 100%)
   - Instant rollback capability

3. **Promotion Process**
   ```
   Dev Model → Evaluate accuracy → Test Deployment
   Test Model → Evaluate on test data → Prod Deployment
   ```

---

## Extended Exercise (Self-Study)

### Part A: Test Case Design

Create test cases for the customer service agent:

| Test ID | Type | Scenario | Expected Result | Pass Criteria |
|---------|------|----------|-----------------|---------------|
| TC-001 | Functional | ? | ? | ? |
| TC-002 | Performance | ? | ? | ? |
| TC-003 | Security | ? | ? | ? |

### Part B: Monitoring Dashboard

Design a monitoring dashboard with:
- 3 engagement metrics
- 3 resolution metrics
- 3 performance metrics
- 2 alert conditions

### Part C: Rollback Plan

Document rollback procedure for:
1. Copilot Studio agent issue
2. Azure OpenAI model regression
3. Power Automate flow failure

---

## Exam-Style Question

**Question:** An organization has a Copilot Studio solution with a custom Azure OpenAI fine-tuned model. What is the correct ALM approach?

A. Include the Azure OpenAI model in the Power Platform solution
B. Manage Azure OpenAI model separately with its own versioning and deployment
C. Deploy the model only to production, sharing across all environments
D. Use the same model deployment for all environments to ensure consistency

**Answer:** B

**Explanation:** Azure OpenAI models require separate ALM:
- Different deployment requirements (compute, scaling)
- Need separate evaluation per environment
- Blue/green deployments for safe rollout
- Power Platform solutions can't contain Azure resources

The model should have its own versioning, registry, and promotion process that coordinates with (but is separate from) the Power Platform solution ALM.
