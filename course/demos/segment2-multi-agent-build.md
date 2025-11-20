# Demo: Multi-Agent System Build

**Segment 2 | Duration: 15-20 minutes**

## Objectives

- Create a Copilot Studio agent with topics
- Configure knowledge sources from Dynamics 365
- Demonstrate MCP integration

## Prerequisites

- Copilot Studio access
- Dynamics 365 Finance environment (or sample data)
- Azure AI Foundry access

---

## Scenario: Finance Assistant Agent

Build an agent that helps finance team members:
- Check invoice status
- Get payment predictions
- Explain accounting entries

---

## Part 1: Create Agent in Copilot Studio

### Steps

1. **Navigate to Copilot Studio**
   - https://copilotstudio.microsoft.com

2. **Create new agent**
   - Name: "Finance Assistant"
   - Description: "Helps finance team with invoice and payment inquiries"
   - Icon: Finance-related

3. **Configure agent settings**
   - Language: English
   - Authentication: Microsoft Entra ID
   - Enable generative AI

---

## Part 2: Design Topics

### Topic 1: Invoice Status

**Trigger Phrases**
```
- Where is my invoice?
- Invoice status
- Check invoice [number]
- Has invoice been paid?
```

**Entities**
- InvoiceNumber (custom entity, pattern: INV-\d{6})

**Flow**
```
1. Ask for invoice number (if not provided)
2. Call Power Automate flow to query D365
3. Return status with details
4. Offer next actions
```

### Topic 2: Payment Predictions

**Trigger Phrases**
```
- When will this be paid?
- Payment prediction
- Expected payment date
```

**Flow**
```
1. Identify customer/invoice
2. Call D365 Finance Insights API
3. Return prediction with confidence
4. Explain factors affecting prediction
```

### Fallback Topic

**Configuration**
```
Confidence threshold: 0.4
Actions:
  1. "I'm not sure I understand. Can you rephrase?"
  2. Offer suggested topics
  3. Option to transfer to human
```

---

## Part 3: Add Knowledge Sources

### Dynamics 365 Finance Knowledge

1. **Navigate to Knowledge**
   - Select "Add knowledge"
   - Choose "Dataverse"

2. **Configure D365 tables**
   - VendInvoiceJour (Vendor invoices)
   - CustInvoiceJour (Customer invoices)
   - LedgerJournalTable (Journal entries)

3. **Set security trimming**
   - Respect D365 security roles
   - Filter based on user context

### Document Knowledge

1. **Add SharePoint source**
   - Accounting policies PDF
   - Process documentation

2. **Configure chunking**
   - Strategy: Semantic (paragraphs)
   - Overlap: 100 tokens

---

## Part 4: MCP Integration

### Concept

Model Context Protocol allows agents to access external tools and data sources dynamically.

### Configuration

1. **Navigate to Actions > MCP**

2. **Add MCP server**
   ```json
   {
     "name": "finance-tools",
     "url": "https://your-mcp-server/finance",
     "tools": [
       {
         "name": "get_aging_report",
         "description": "Get accounts receivable aging"
       },
       {
         "name": "calculate_dso",
         "description": "Calculate Days Sales Outstanding"
       }
     ]
   }
   ```

3. **Enable in agent**
   - Allow agent to discover and use tools
   - Set authorization

---

## Part 5: Test Agent

### Test Scenarios

1. **Invoice lookup**
   ```
   User: What's the status of invoice INV-123456?
   Agent: [Calls D365, returns status]
   ```

2. **Payment prediction**
   ```
   User: When will Contoso pay their outstanding invoices?
   Agent: [Calls Finance Insights, returns prediction]
   ```

3. **Knowledge question**
   ```
   User: What's our policy on early payment discounts?
   Agent: [Searches knowledge, returns policy]
   ```

4. **Fallback test**
   ```
   User: asdfghjkl
   Agent: [Triggers fallback, offers help]
   ```

---

## Key Exam Points

- Topic design: triggers, entities, flow, fallback
- Knowledge sources: Dataverse, documents, web
- MCP enables dynamic tool discovery
- Security trimming respects source system permissions
- Agent types: task (this demo), autonomous, prompt/response

---

## Resources

- [Copilot Studio - Topics](https://learn.microsoft.com/microsoft-copilot-studio/authoring-create-edit-topics)
- [Add Knowledge](https://learn.microsoft.com/microsoft-copilot-studio/knowledge-add-existing-copilot)
- [MCP in Copilot Studio](https://learn.microsoft.com/microsoft-copilot-studio/agent-extend-action-mcp)
- [D365 Finance Insights](https://learn.microsoft.com/dynamics365/finance/finance-insights/finance-insights-home-page)
