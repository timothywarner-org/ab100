# AB-100 Quick Reference Cheat Sheet

## Platform Comparison

| Platform | Best For | Key Capability |
|----------|----------|----------------|
| Microsoft 365 Copilot | Enterprise productivity | M365 app integration |
| Copilot Studio | Custom conversational AI | Topics, actions, knowledge |
| Azure AI Foundry | Advanced AI development | Custom models, fine-tuning |
| Azure OpenAI | GPT models | Generation, embeddings |
| AI Builder | Citizen developer AI | Prebuilt models, low-code |

## Agent Types

| Type | Purpose | Example |
|------|---------|---------|
| Task | Automate specific workflows | Invoice processing |
| Autonomous | Independent decisions | Lead qualification |
| Prompt/Response | Conversational | Customer support |

## Data Quality Dimensions

- **Accuracy**: Correct and reliable
- **Relevance**: Applicable to use case
- **Timeliness**: Current and updated
- **Cleanliness**: Error-free, no duplicates
- **Availability**: Accessible when needed

## ROI Calculation

```
ROI = ((Benefits - Costs) / Costs) × 100
```

**Cost Components**: Licensing, implementation, operations, training
**Benefit Categories**: Hard savings, soft savings, revenue, risk reduction

## Build vs Buy vs Extend

| Option | Choose When |
|--------|-------------|
| Build | Unique advantage, full control needed |
| Buy | Standard process, quick deployment |
| Extend | Existing platform, moderate customization |

## Copilot Studio Design

**Topic Components**
- Trigger phrases
- Entities
- Conversation flow
- Actions
- Fallback

**NLP Options**
- Standard: Keyword matching
- CLU: Intent classification
- Generative: Open-ended conversations

## Model Context Protocol (MCP)

**Components**
- Resources: Data sources
- Tools: Functions to invoke
- Prompts: Reusable templates

## Microsoft 365 Copilot Extensions

| Type | Purpose |
|------|---------|
| Declarative agents | Custom personas |
| API plugins | External data |
| Graph connectors | Enterprise data |

## Key Monitoring Metrics

| Category | Metrics |
|----------|---------|
| Engagement | Sessions, users |
| Resolution | Self-service rate |
| Quality | Satisfaction, accuracy |
| Performance | Latency, errors |

## ALM Environments

```
Dev → Test → Staging → Production
```

## Security Layers

1. Identity & Access (AuthN/AuthZ)
2. Network (VNet, endpoints)
3. Data (Encryption, DLP)
4. Application (Input validation)

## Responsible AI Principles

1. **Fairness** - No bias
2. **Reliability & Safety** - Works correctly
3. **Privacy & Security** - Data protected
4. **Inclusiveness** - Accessible to all
5. **Transparency** - Explainable
6. **Accountability** - Governed

## Prompt Engineering Tips

1. Be specific and clear
2. Provide context
3. Define output format
4. Use examples (few-shot)
5. Set constraints/guardrails

## Common Vulnerabilities

| Threat | Mitigation |
|--------|------------|
| Prompt injection | Input sanitization |
| Data leakage | Output filtering |
| Jailbreaking | Multi-layer defense |

## Dynamics 365 AI Features

### Sales
- Lead scoring
- Opportunity insights
- Conversation intelligence

### Service
- Case routing
- Knowledge suggestions
- Sentiment analysis

### Finance
- Cash flow forecasting
- Payment predictions

### Supply Chain
- Demand forecasting
- Inventory optimization

## Test Types

| Type | Purpose |
|------|---------|
| Functional | Correct behavior |
| Performance | Speed/scale |
| Security | Vulnerabilities |
| UAT | User validation |
| A/B | Compare versions |

## Audit Trail Requirements

- What: Model, data, config, access changes
- When: Timestamp
- Who: User/service identity
- Result: Success/failure
- Details: Before/after values

## Key Formulas

**Model Accuracy**
```
Accuracy = (TP + TN) / (TP + TN + FP + FN)
```

**F1 Score**
```
F1 = 2 × (Precision × Recall) / (Precision + Recall)
```

## Quick Decisions

**Use Prebuilt Agents When**
- Standard business process
- Quick deployment needed
- Limited customization

**Build Custom Agents When**
- Unique requirements
- Complex business logic
- Brand-specific experience

**Create Custom Models When**
- Prebuilt don't meet accuracy
- Domain-specific terminology
- Proprietary patterns
