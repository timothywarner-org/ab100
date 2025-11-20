# Demo: Deployment and Monitoring

**Segment 3 | Duration: 15-20 minutes**

## Objectives

- Deploy a multi-agent solution across environments
- Configure comprehensive monitoring
- Set up ALM pipelines

## Prerequisites

- Copilot Studio with solution (from Segment 2)
- Azure subscription with Application Insights
- Power Platform environments (Dev, Test, Prod)

---

## Part 1: Environment Strategy

### Environment Flow

```
┌─────────┐     ┌─────────┐     ┌─────────┐     ┌─────────┐
│   Dev   │ ──▶ │  Test   │ ──▶ │ Staging │ ──▶ │  Prod   │
└─────────┘     └─────────┘     └─────────┘     └─────────┘
     │               │               │               │
   Build         Validate        UAT/Perf        Release
```

### Demo Steps

1. **Show Power Platform Admin Center**
   - Navigate to Environments
   - Explain environment types

2. **Review solution structure**
   - Components included
   - Dependencies

---

## Part 2: Export and Deploy Solution

### Export from Dev

1. **Navigate to Solutions**
   - Select "Finance Assistant" solution
   - Export as managed

2. **Version management**
   ```
   Major.Minor.Build.Revision
   1.0.0.1 → 1.0.0.2 (patch)
   1.0.0.1 → 1.1.0.0 (feature)
   1.0.0.1 → 2.0.0.0 (breaking)
   ```

### Import to Test

1. **Switch to Test environment**

2. **Import solution**
   - Upload managed solution
   - Configure connection references
   - Set environment variables

3. **Validate import**
   - Check all components
   - Verify connections

---

## Part 3: Configure Application Insights

### Create Application Insights Resource

1. **Azure Portal > Application Insights**
   - Create new resource
   - Note instrumentation key

### Connect Copilot Studio

1. **Agent Settings > Analytics**
   - Enable Application Insights
   - Paste instrumentation key

2. **Configure telemetry**
   ```
   Tracked events:
   - Session start/end
   - Topic triggers
   - Action invocations
   - Errors and exceptions
   - User feedback
   ```

### Create Dashboard

1. **Pin key metrics**
   - Session count
   - Resolution rate
   - Average duration
   - Error rate

2. **Set up alerts**
   ```
   Alert: High Error Rate
   Condition: Error count > 10 in 5 minutes
   Action: Email team + create incident
   ```

---

## Part 4: Key Performance Metrics

### Engagement Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| Daily active users | >100 | Unique users/day |
| Sessions per user | 2-3 | Sessions/unique user |
| Session duration | 3-5 min | Avg time in agent |

### Resolution Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| Self-service rate | >70% | Resolved without human |
| Topic recognition | >85% | Correct topic triggered |
| Task completion | >80% | User achieved goal |

### Quality Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| CSAT score | >4.0/5 | User feedback |
| Accuracy | >90% | Correct responses |
| Escalation rate | <15% | Transferred to human |

### Performance Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| Response latency | <3 sec | Time to first response |
| Error rate | <2% | Failed requests |
| Availability | 99.9% | Uptime |

---

## Part 5: ALM Pipeline Configuration

### Azure DevOps Pipeline

```yaml
trigger:
  branches:
    include:
      - main

stages:
  - stage: Build
    jobs:
      - job: ExportSolution
        steps:
          - task: PowerPlatformToolInstaller@2
          - task: PowerPlatformExportSolution@2
            inputs:
              environment: $(DevEnvironmentUrl)
              solutionName: FinanceAssistant
              solutionOutputFile: $(Build.ArtifactStagingDirectory)/FinanceAssistant.zip

  - stage: Test
    dependsOn: Build
    jobs:
      - job: DeployTest
        steps:
          - task: PowerPlatformImportSolution@2
            inputs:
              environment: $(TestEnvironmentUrl)
              solutionFile: $(Pipeline.Workspace)/FinanceAssistant.zip
          - task: PowerPlatformRunTests@2

  - stage: Production
    dependsOn: Test
    condition: succeeded()
    jobs:
      - deployment: DeployProd
        environment: Production
        strategy:
          runOnce:
            deploy:
              steps:
                - task: PowerPlatformImportSolution@2
```

### Demo Steps

1. **Show pipeline in Azure DevOps**

2. **Trigger deployment**
   - Commit change to repo
   - Watch pipeline run

3. **Review gates and approvals**
   - Test results gate
   - Manual approval for prod

---

## Key Exam Points

- Environment strategy: Dev → Test → Staging → Prod
- Solution versioning: Major.Minor.Build.Revision
- Metrics categories: Engagement, Resolution, Quality, Performance
- ALM tools: Power Platform CLI, Azure DevOps, GitHub Actions
- Monitoring: Application Insights integration
- Self-service rate is key success metric

---

## Resources

- [Power Platform ALM](https://learn.microsoft.com/power-platform/alm/)
- [Copilot Studio Analytics](https://learn.microsoft.com/microsoft-copilot-studio/analytics-summary)
- [Application Insights](https://learn.microsoft.com/azure/azure-monitor/app/app-insights-overview)
- [Power Platform Build Tools](https://learn.microsoft.com/power-platform/alm/devops-build-tools)
