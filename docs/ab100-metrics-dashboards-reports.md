# AB-100 Metrics, Dashboards, and Reports

> Last verified: 2026-04-29
> Verification method: Microsoft Learn MCP search and fetch, plus local AB-100 course blueprint.

Use this as a compact instructor handout for the AB-100 monitoring, testing, governance,
adoption, ROI, and exam-readiness topics. The AB-100 study guide does not name every dashboard
explicitly, but it requires candidates to know how to monitor agents, analyze feedback and
telemetry, test agents and models, design audit trails, validate Responsible AI controls, and
interpret score reports.

## Highest-Yield Dashboard List

| Surface | Metric, chart, dashboard, or report | What to point out for AB-100 | Microsoft Learn URI |
| --- | --- | --- | --- |
| Copilot Studio | Analytics page | Main agent performance entry point for conversational, autonomous, and hybrid agents. Includes summaries, overview metrics, effectiveness, usage, satisfaction, transcripts, and drill-downs. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview> |
| Copilot Studio | Analytics AI summary | Copilot-generated summary of key analytics insights, trends, sentiment, and improvement areas for the selected reporting period. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview#summary> |
| Copilot Studio | Customer comments summary | Preview sentiment summary over user feedback/comments; useful for backlog and user-feedback analysis. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview#summary> |
| Copilot Studio | Conversational analytics concepts | Defines conversation, analytics session, conversation timeout, and session relationships. Essential for interpreting agent metrics correctly. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview#conversational-sessions-only> |
| Copilot Studio | Autonomous agent analytics sessions | Tracks trigger-to-actions runs for event-triggered agents. Key distinction for autonomous-agent monitoring. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview#event-trigger-sessions-only> |
| Copilot Studio | Hybrid analytics view | Shows conversational and event-triggered metrics side by side when an agent has both session types. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview#hybrid-view---both-conversational-and-event-triggered-sessions> |
| Copilot Studio | Download conversational transcripts | Export transcripts for review and custom analysis; supports backlog, tuning, and audit discussions. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview#download-conversational-transcripts> |
| Copilot Studio | Engagement rate | Percent of total sessions classified as engaged. Low engagement implies topic coverage or user guidance gaps. | <https://learn.microsoft.com/microsoft-copilot-studio/guidance/measuring-engagement> |
| Copilot Studio | Session outcomes | Resolved, escalated, or abandoned outcomes; core tuning signal for agent quality. | <https://learn.microsoft.com/microsoft-copilot-studio/guidance/measuring-outcomes> |
| Copilot Studio | Deflection overview metrics | Total sessions, engagement rate, resolution rate, escalation rate, abandon rate, and CSAT as the core deflection metric set. | <https://learn.microsoft.com/microsoft-copilot-studio/guidance/deflection-overview> |
| Copilot Studio | Themes | Groups user questions that trigger generative AI responses into themes with response quality metrics. Useful for finding knowledge gaps. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-themes> |
| Copilot Studio | Reactions | Thumbs-up/thumbs-down reactions and comments for recent agent responses; useful for user feedback loops. | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-improve-agent-effectiveness#reactions> |
| Copilot Studio | Custom analytics strategy | Export and model Copilot Studio analytics data in custom reports when built-in analytics are insufficient. | <https://learn.microsoft.com/microsoft-copilot-studio/guidance/custom-analytics-strategy> |
| Copilot Studio | Application Insights custom telemetry | Tracks logged messages/events, triggered topics, and custom telemetry events from topics. Use for deep operational telemetry. | <https://learn.microsoft.com/microsoft-copilot-studio/advanced-bot-framework-composer-capture-telemetry> |
| Copilot Studio Kit | Conversation Analyzer | Analyze Copilot Studio conversation transcripts to find issues, failure patterns, and improvement opportunities. | <https://learn.microsoft.com/microsoft-copilot-studio/guidance/kit-conversation-analyzer> |
| Microsoft 365 Copilot | Copilot Control System measurement and reporting | Umbrella concept: operational reports, strategic Copilot Dashboard reports, and customizable Viva Insights reports. | <https://learn.microsoft.com/microsoft-365/copilot/copilot-control-system/measurement-reporting> |
| Microsoft 365 Copilot | Copilot Analytics | Reporting system for Copilot usage data, agent usage data, Microsoft Graph data, and optional uploaded business metrics. | <https://learn.microsoft.com/viva/insights/copilot-analytics-introduction> |
| Microsoft 365 Copilot | Microsoft Copilot Dashboard | Strategic dashboard in Viva Insights covering readiness, adoption, impact, and sentiment. | <https://learn.microsoft.com/viva/insights/org-team-insights/copilot-dashboard> |
| Microsoft 365 Copilot | Copilot Dashboard readiness metrics | Readiness view for deployment planning and license rollout. | <https://learn.microsoft.com/viva/insights/org-team-insights/copilot-dashboard#readiness> |
| Microsoft 365 Copilot | Copilot Dashboard adoption metrics | Adoption trends, usage intensity, app and feature use, benchmarks, and group-level filters where licensed. | <https://learn.microsoft.com/viva/insights/org-team-insights/copilot-dashboard#adoption> |
| Microsoft 365 Copilot | Copilot Dashboard impact metrics | Workplace pattern and collaboration trend metrics, Copilot assisted hours/value, and satisfaction rate. | <https://learn.microsoft.com/viva/insights/org-team-insights/copilot-dashboard#impact> |
| Microsoft 365 Copilot | Copilot Dashboard sentiment | Pulse and Glint survey-backed sentiment where available. Useful for adoption and change-management framing. | <https://learn.microsoft.com/viva/pulse/viva-integrations/measure-copilot-impact-in-your-organization> |
| Microsoft 365 admin center | Microsoft 365 Copilot readiness report | Identifies technically eligible users, prerequisite licenses, eligible update channel, assigned/available licenses, and suggested rollout candidates. | <https://learn.microsoft.com/microsoft-365/admin/activity-reports/microsoft-365-copilot-readiness?view=o365-worldwide> |
| Microsoft 365 admin center | Microsoft 365 Copilot usage report | Enabled users, active users, active user rate, active agent users, prompts submitted, average prompts per user, adoption by app, agent adoption, and user last activity. | <https://learn.microsoft.com/microsoft-365/admin/activity-reports/microsoft-365-copilot-usage?view=o365-worldwide> |
| Microsoft 365 admin center | Microsoft 365 Copilot Chat usage report | Active Copilot Chat usage, total active users, average daily active users, total prompts, prompts per user, active days, and last activity. | <https://learn.microsoft.com/microsoft-365/admin/activity-reports/microsoft-copilot-usage?view=o365-worldwide> |
| Viva Insights | Copilot Analytics reports | Out-of-box and analyst reports for Copilot and AI agent adoption/impact. | <https://learn.microsoft.com/viva/insights/org-team-insights/copilot-analytics-reports> |
| Viva Insights | Copilot Studio agents report | Agent-level impact report for conversational and autonomous Copilot Studio agents, including sessions, outcomes, satisfaction, assisted hours, triggers, and actions. | <https://learn.microsoft.com/viva/insights/advanced/analyst/templates/copilot-studio-agents> |
| Viva Insights | Copilot Business Impact Report | Advanced report for connecting Copilot usage to uploaded business outcome metrics. Useful for ROI discussion. | <https://learn.microsoft.com/viva/insights/advanced/analyst/templates/copilot-business-impact> |
| Power Platform admin center | Copilot hub | Tenant admin hub for Copilot usage/cost insights, upcoming features, settings, governance controls, and product pages. | <https://learn.microsoft.com/power-platform/admin/copilot/copilot-hub> |
| Power Platform admin center | Copilot Studio product page | Active agents, message consumption, session success rate, and top agents by monthly active sessions. | <https://learn.microsoft.com/power-platform/admin/copilot/copilot-hub#copilot-studio> |
| Power Platform admin center | Power Apps Copilot usage analytics | Monthly active users and actions taken for data entry and data exploration agents. | <https://learn.microsoft.com/power-platform/admin/copilot/copilot-hub#power-apps> |
| Power Platform admin center | Dynamics 365 Sales Copilot usage analytics | Monthly active users for Copilot in Dynamics 365 Sales and environment/app drill-down. | <https://learn.microsoft.com/power-platform/admin/copilot/copilot-hub#dynamics-365-sales> |
| Power Platform admin center | Copilot Studio credits and capacity | Copilot credit consumption, capacity limits, notifications, hard stops, and pay-as-you-go usage controls. | <https://learn.microsoft.com/power-platform/admin/manage-copilot-studio-messages-capacity> |
| Power Platform admin center | Monitor page | Operational health metrics for Power Platform resources such as apps. | <https://learn.microsoft.com/power-platform/admin/monitoring/monitoring-overview> |
| Power Platform admin center | Admin deployment hub | Tenant-wide Power Platform pipeline hosts, deployment runs, approvals, and deployment troubleshooting visibility. | <https://learn.microsoft.com/power-platform/alm/admin-deployment-hub> |
| Power Platform | Activity logs in Microsoft Purview | Cross-product audit logging for connectors, Copilot Studio, Dataverse, Power Apps, Power Automate, Power Pages, and Power Platform admin actions. | <https://learn.microsoft.com/power-platform/admin/activity-logging-auditing/activity-logs-overview> |
| Copilot Studio + Purview | Copilot Studio audit logs | Agent authoring, component, AI plugin, environment variable, publishing, sharing, App Insights config, and user interaction events. | <https://learn.microsoft.com/microsoft-copilot-studio/admin-logging-copilot-studio> |
| Microsoft Purview | DSPM for AI | Security posture visibility for AI, including Copilot interaction context surfaced from audit events where available. | <https://learn.microsoft.com/purview/ai-microsoft-purview> |
| Microsoft Sentinel | Alerts and incident response | Use Sentinel analytics and incidents with Purview-ingested audit logs for agent activity detection and response. | <https://learn.microsoft.com/azure/sentinel/relate-alerts-to-incidents> |
| Dynamics 365 Customer Service / Contact Center | Omnichannel Summary dashboard | End-to-end customer-service journey report combining Copilot Studio AI agent metrics with service representative metrics. | <https://learn.microsoft.com/dynamics365/customer-service/use/omnichannel-summary-dashboard> |
| Dynamics 365 Customer Service / Contact Center | Bot dashboard | Chat/IVR AI agent KPIs and charts for support organizations. Shows conversation, session, outcome, topic, and drill-down metrics. | <https://learn.microsoft.com/dynamics365/customer-service/use/oc-bot-dashboard> |
| Dynamics 365 Contact Center | Real-time Bot report | In-progress and completed AI agent conversations, total ongoing/completed/transferred conversations, and average conversation duration. | <https://learn.microsoft.com/dynamics365/contact-center/use/agent-realtime-dashboard> |
| Dynamics 365 Customer Service | Omnichannel historical analytics reports | Summary, Conversation, Queue, Voice, Voicemail, Agent, Bot, Proactive Outbound, and Bot-Intent dashboards. | <https://learn.microsoft.com/dynamics365/customer-service/administer/oc-historical-analytics-reports> |
| Dynamics 365 Customer Service | Omnichannel dashboard overview | Dashboard access, report list, filters, data model, metrics, refresh, and retention. | <https://learn.microsoft.com/dynamics365/customer-service/use/omnichannel-analytics-insights> |
| Microsoft Foundry | Observability in generative AI | Foundry observability concepts: evaluation, monitoring, tracing, quality, safety, operational health, logs, traces, and model outputs. | <https://learn.microsoft.com/azure/foundry/concepts/observability> |
| Microsoft Foundry | Agent Monitoring Dashboard | Agent summary cards and charts for token usage, latency, run success rate, evaluation metrics, and red teaming results. | <https://learn.microsoft.com/azure/foundry/observability/how-to/how-to-monitor-agents-dashboard> |
| Microsoft Foundry | Continuous evaluation | Sampled evaluation of agent responses with evaluator configuration, sample rate, scheduled evaluations, and result charts. | <https://learn.microsoft.com/azure/foundry/observability/how-to/how-to-monitor-agents-dashboard#set-up-continuous-evaluation> |
| Microsoft Foundry | Built-in evaluators | Quality, safety, RAG, and agent evaluator reference. Useful for custom-model validation and agent testing criteria. | <https://learn.microsoft.com/azure/foundry/concepts/built-in-evaluators> |
| Microsoft Foundry | Trace agent setup | Application Insights-backed tracing for agent execution flow, LLM calls, tool invocations, and debugging. | <https://learn.microsoft.com/azure/foundry/observability/how-to/trace-agent-setup> |
| Azure Monitor | Application Insights overview | Telemetry backend for Foundry monitoring and custom/pro-code app observability. | <https://learn.microsoft.com/azure/azure-monitor/app/app-insights-overview> |
| Azure Monitor | Workbooks | Custom dashboards and visualizations over Application Insights / Log Analytics telemetry. | <https://learn.microsoft.com/azure/azure-monitor/visualize/workbooks-overview> |
| Microsoft Defender | Microsoft Secure Score | Tenant security posture score and recommended actions; relevant to governance and risk-management conversations. | <https://learn.microsoft.com/defender-xdr/microsoft-secure-score> |
| Microsoft Purview | Compliance Manager | Compliance score, assessments, improvement actions, and risk-based compliance reporting. | <https://learn.microsoft.com/purview/compliance-manager> |
| Microsoft Purview | Audit solutions overview | Audit search, audit retention, and compliance evidence trail for Microsoft 365 and Power Platform activity. | <https://learn.microsoft.com/purview/audit-solutions-overview> |
| Microsoft Service Trust Portal | Audit reports and compliance documents | SOC, ISO, FedRAMP, PCI, assessment reports, and compliance whitepapers for governance evidence. | <https://learn.microsoft.com/purview/get-started-with-service-trust-portal> |
| Power Platform Well-Architected | Power Platform Well-Architected assessment | Assessment score across Power Platform Well-Architected pillars for intelligent workloads. | <https://learn.microsoft.com/power-platform/well-architected/> |
| Azure Well-Architected | AI workload assessment | Self-assessment that scores an AI workload against Well-Architected pillars. | <https://learn.microsoft.com/assessments/ea306cce-c7fa-4a2b-89a6-bfefba6a9cf4/> |
| Microsoft Learn credentials | Exam score report | Overall numeric score, pass/fail status, and bar chart by skill area. AB-100 passing score is 700 or greater on the 1-1000 scale. | <https://learn.microsoft.com/credentials/certifications/exam-scoring-reports> |

## Metrics To Say Out Loud

For a concise classroom memory hook, group the metrics this way:

| Category | Metrics |
| --- | --- |
| Adoption | Enabled users, active users, active user rate, adoption by app, active agent users, usage intensity, active days, last activity date. |
| Prompts and usage | Total prompts submitted, average prompts per user, Copilot Chat work/web split, message consumption, Copilot credits, monthly active sessions. |
| Agent effectiveness | Total sessions, engagement rate, resolution rate, escalation rate, abandon rate, deflection rate, CSAT, satisfaction score, reactions, comments. |
| Contact center | Total bot conversations, escalated conversations, deflected conversations, average escalation time, average deflection time, session outcomes, topic metrics. |
| Autonomous agents | Triggered runs, successful runs, unsuccessful runs, average completion time, sessions per trigger, sessions per action, agent-assisted impact. |
| Foundry operations | Token usage, latency, run success rate, error rate, evaluation scores, red team scan results, traces, logs, quality and safety signals. |
| Governance and audit | Audit event date/time, user, operation, result status, resource affected, environment, CopilotInteraction, agent/component/plugin change events. |
| Security and compliance | Secure Score, Compliance Manager score, improvement actions, blocked queries, alerts, incidents, content moderation counts. |
| ROI and business value | Copilot assisted hours, Copilot assisted value, satisfaction rate, uploaded business outcome metrics, cost and usage rates. |
| Exam readiness | Overall scaled score, pass/fail, skill-area bar chart, 700 passing threshold, score report in Learn/Pearson VUE. |

## AB-100 Exam Mapping

| AB-100 area | Primary dashboards/reports to demo |
| --- | --- |
| 1.3 Evaluate costs and benefits | Copilot Dashboard impact, Copilot Business Impact Report, Copilot assisted hours/value, Power Platform Copilot usage/cost insights. |
| 3.1 Analyze, monitor, and tune | Copilot Studio Analytics, Foundry Agent Monitoring Dashboard, Application Insights, Dynamics Bot dashboard, Microsoft 365 Copilot usage reports. |
| 3.2 Manage testing | Foundry built-in evaluators, continuous evaluation, red team scans, Copilot Studio Kit Conversation Analyzer, transcript review. |
| 3.3 ALM | Power Platform admin deployment hub, pipelines run history, solution checker reports, audit logs for agent/component/plugin changes. |
| 3.4 Security, governance, risk, compliance | Purview audit, DSPM for AI, Sentinel incidents, Secure Score, Compliance Manager, Service Trust Portal, PPAC Copilot governance. |
| Exam mastery | Microsoft exam score report and skill-area bar chart. |
