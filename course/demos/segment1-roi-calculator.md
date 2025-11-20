# Demo: Model Router and ROI Calculator

**Segment 1 | Duration: 10-15 minutes**

## Objectives

- Design a model router for cost-optimized AI requests
- Calculate ROI for an AI implementation project
- Demonstrate TCO analysis methodology

## Prerequisites

- Azure AI Foundry access
- Sample cost data (provided below)

---

## Part 1: Model Router Design

### Concept

Route requests to different models based on complexity, cost, and latency requirements.

### Architecture

```
┌─────────────┐     ┌──────────────┐     ┌─────────────────┐
│   Request   │ ──▶ │ Model Router │ ──▶ │ GPT-4o (complex)│
│             │     │              │     ├─────────────────┤
└─────────────┘     │  Evaluates:  │ ──▶ │ GPT-4o-mini     │
                    │  - Complexity│     │ (standard)      │
                    │  - Token est │     ├─────────────────┤
                    │  - Latency   │ ──▶ │ Cached response │
                    └──────────────┘     │ (simple)        │
                                         └─────────────────┘
```

### Demo Steps

1. **Show Azure AI Foundry model deployments**
   - Navigate to deployments
   - Show different model tiers

2. **Explain routing logic**
   ```python
   def route_request(request):
       complexity = estimate_complexity(request)

       if complexity == "simple" and in_cache(request):
           return "cache"
       elif complexity in ["simple", "standard"]:
           return "gpt-4o-mini"
       else:
           return "gpt-4o"
   ```

3. **Show cost comparison**
   - GPT-4o: $5.00 / 1M input tokens
   - GPT-4o-mini: $0.15 / 1M input tokens
   - Cached: ~$0 (minimal compute)

---

## Part 2: ROI Calculation

### Formula

```
ROI = ((Total Benefits - Total Costs) / Total Costs) × 100
```

### Sample Scenario: Customer Service Agent

**Costs (Year 1)**

| Category | Amount |
|----------|--------|
| Licensing (Copilot Studio) | $12,000 |
| Azure AI Services | $18,000 |
| Implementation | $50,000 |
| Training | $10,000 |
| Ongoing Operations | $15,000 |
| **Total Costs** | **$105,000** |

**Benefits (Year 1)**

| Category | Calculation | Amount |
|----------|-------------|--------|
| Agent time saved | 5 agents × 2 hrs/day × 250 days × $35/hr | $87,500 |
| Reduced escalations | 500 fewer × $50 avg cost | $25,000 |
| Extended hours coverage | 20% more inquiries × $5 value | $30,000 |
| Customer satisfaction lift | Reduced churn, est. | $20,000 |
| **Total Benefits** | | **$162,500** |

**ROI Calculation**

```
ROI = (($162,500 - $105,000) / $105,000) × 100
ROI = ($57,500 / $105,000) × 100
ROI = 54.8%
```

### Demo Steps

1. **Open ROI calculator spreadsheet** (or use whiteboard)

2. **Walk through cost categories**
   - Emphasize hidden costs (training, change management)

3. **Calculate benefits**
   - Show both hard and soft savings
   - Discuss measurement methodology

4. **Calculate final ROI**
   - Show sensitivity analysis
   - Discuss payback period

---

## Key Exam Points

- Know ROI formula: `((Benefits - Costs) / Costs) × 100`
- Understand TCO components: licensing, implementation, operations, training
- Model selection impacts both cost and performance
- Build vs buy vs extend decision factors

---

## Resources

- [Azure AI Pricing Calculator](https://azure.microsoft.com/pricing/calculator/)
- [Power Platform Licensing Guide](https://learn.microsoft.com/power-platform/admin/pricing-billing-skus)
- [CAF AI - Strategy](https://learn.microsoft.com/azure/cloud-adoption-framework/scenarios/ai/strategy)
