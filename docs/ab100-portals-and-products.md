# AB-100 Portals and Products -- Canonical Reference

> Last verified: 2026-04-29
> Verification method: Microsoft Learn MCP server (`microsoft_docs_search`,
> `microsoft_docs_fetch`) plus targeted WebFetch against `microsoft.com`,
> `learn.microsoft.com`, and `github.com`.

A canonical, architect-grade index of admin portals, maker portals, and Microsoft
websites that an AB-100 candidate (Microsoft Certified: Agentic AI Business
Solutions Architect) needs to know cold. Organized by surface area, then by role
(admin / maker / docs / marketing).

Plain ASCII only. No contractions. `--` is used for prose dashes. Microsoft
product casing follows the AB-100 authoring conventions in `CLAUDE.md`.

URLs flagged "auth gate" return HTTP 200 only after sign-in; the underlying
unauthenticated host nevertheless responds. URLs flagged "redirect" intentionally
302 to a current canonical location (the sign-in entry point or the new portal)
and the redirect target is what is verified.

## Quick navigation

1. [Microsoft 365 and Copilot](#1-microsoft-365-and-copilot)
2. [Microsoft Power Platform and Copilot Studio](#2-microsoft-power-platform-and-copilot-studio)
3. [Microsoft Foundry and Azure AI](#3-microsoft-foundry-and-azure-ai)
4. [Azure platform admin and architecture](#4-azure-platform-admin-and-architecture)
5. [Dynamics 365 and business apps](#5-dynamics-365-and-business-apps)
6. [Identity, security, and compliance](#6-identity-security-and-compliance)
7. [Governance, adoption, and Centers of Excellence](#7-governance-adoption-and-centers-of-excellence)
8. [Learning, community, and certification logistics](#8-learning-community-and-certification-logistics)
9. [Sovereign cloud equivalents](#9-sovereign-cloud-equivalents)
10. [Retirement and migration watchlist](#10-retirement-and-migration-watchlist)

---

## 1. Microsoft 365 and Copilot

### 1.1 Microsoft 365 tenant admin

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft 365 admin center | <https://admin.microsoft.com> | Tenant admin: users, licenses, billing, service health, message center, Copilot node, deep links to specialist admin centers. |
| Microsoft 365 admin center (alternate root) | <https://admin.cloud.microsoft> | Modern host name used for deep links such as `admin.cloud.microsoft/exchange#/homepage`. Resolves to the same admin center. |
| Microsoft 365 Service Health | <https://admin.microsoft.com/Adminportal/Home#/servicehealth> | Real-time tenant health dashboard for Microsoft 365 services, including Copilot. |
| Microsoft 365 Message Center | <https://admin.microsoft.com/Adminportal/Home#/MessageCenter> | Tenant-targeted change announcements, roadmap rollouts, and required-action notices. |
| Microsoft 365 Apps admin center (Cloud Policy) | <https://config.office.com> | Cloud-delivered policies for Microsoft 365 Apps; required for Copilot policy controls such as "Allow web search in Copilot." |
| Microsoft Intune admin center | <https://intune.microsoft.com> | Endpoint management, app deployment, Endpoint security policies; required for Cloud PC and Copilot client deployment. |

### 1.2 Workload-specific admin centers

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Teams admin center | <https://admin.teams.microsoft.com> | Teams policies, meetings, calling, app permissions, Copilot in Teams settings. |
| SharePoint admin center | `https://<tenant>-admin.sharepoint.com` (also via <https://admin.microsoft.com/sharepoint>) | Sites, sharing, search, content governance; also hosts most OneDrive tenant settings. |
| Exchange admin center (EAC) | <https://admin.exchange.microsoft.com> | Mail flow, mailboxes, anti-spam, connectors, migration, Copilot in Outlook adjacent settings. |
| OneDrive admin (now part of SharePoint admin center) | <https://admin.onedrive.com> (302 redirect to SharePoint admin) | Tenant-wide OneDrive sharing, sync, storage, retention. The standalone OneDrive admin center has been folded into the SharePoint admin center. |

### 1.3 Microsoft 365 Copilot

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft 365 Copilot app / Copilot Chat (BizChat) | <https://m365.cloud.microsoft> | End-user Microsoft 365 Copilot app and Copilot Chat. Chat sub-path: <https://m365.cloud.microsoft/chat>. |
| Microsoft 365 Copilot Chat (legacy entry) | <https://m365copilot.com> | Older host that redirects into the Microsoft 365 Copilot app. Useful in stakeholder docs. |
| Copilot Prompt Gallery | <https://m365.cloud.microsoft/copilot-prompts> | End-user prompt library; also a useful adoption/skilling demo asset. |
| Copilot Control System (in M365 admin center) | <https://admin.microsoft.com> -> Copilot -> Settings | Centralized Copilot management: User access, Data access, Copilot actions, Other settings; cross-links to Purview, Teams, Power Platform, Microsoft 365 Apps admin centers. |
| Manage agents (Copilot tenant admin) | <https://admin.microsoft.com> -> Copilot -> Agents | Review, approve, block, and inventory Microsoft 365 Copilot agents (declarative and Copilot Studio) at the tenant level. |
| Microsoft Copilot Dashboard (Viva Insights) | <https://analysis.insights.viva.office.com/> -> Copilot Dashboard | Readiness, adoption, impact, and sentiment metrics for Microsoft 365 Copilot. |
| Agent Builder (declarative agents) | Launched from inside the Microsoft 365 Copilot app -- <https://m365.cloud.microsoft> -> Create agent | No-code declarative agent authoring inside Copilot. The shortest path to a Microsoft 365 Copilot agent. |
| Microsoft Security Copilot | <https://securitycopilot.microsoft.com> | Standalone Security Copilot experience; reachable from the Copilot Control System node. |
| Microsoft Copilot (consumer) | <https://copilot.microsoft.com> | Consumer Microsoft Copilot (personal Microsoft account). Useful for distinguishing from Microsoft 365 Copilot Chat in tenant-licensing conversations. |

### 1.4 Microsoft 365 developer and partner

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Graph Explorer | <https://developer.microsoft.com/graph/graph-explorer> | Interactive Graph API testing for Microsoft 365 (mail, files, Teams, Copilot, identity). |
| Microsoft 365 Developer Program | <https://developer.microsoft.com/microsoft-365/dev-program> | Eligible Microsoft 365 E5 sandbox tenants for development and demo. |
| Developer Portal for Teams | <https://dev.teams.microsoft.com> | Configure, package, and publish Teams apps, Copilot agent identities, and declarative agent manifests. |
| Microsoft Partner Center | <https://partner.microsoft.com/dashboard> | Microsoft AI Cloud Partner Program management, CSP, marketplace publishing, incentives. |

### 1.5 Microsoft 365 marketing and adoption

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft 365 Copilot product page | <https://www.microsoft.com/microsoft-365/copilot> | Public product page; plans, capabilities, licensing. |
| Microsoft Copilot Studio product page | <https://www.microsoft.com/microsoft-copilot/microsoft-copilot-studio> | Public marketing for Copilot Studio. |
| Microsoft Adoption site | <https://adoption.microsoft.com> | Hub for adoption and change-management resources across Microsoft 365, Copilot, Power Platform, Teams. |
| Copilot scenario library | <https://adoption.microsoft.com/scenario-library/> | Microsoft-curated catalog of AI/Copilot use cases by function and industry. |
| Copilot Skilling Center | <https://adoption.microsoft.com/copilot/skilling-center/> | End-user training and prompt skilling content for Microsoft 365 Copilot. |
| Frontier program (preview Copilot features) | <https://adoption.microsoft.com/copilot/frontier-program/> | Information page for the Copilot Frontier program (experimental and preview features). |
| Microsoft 365 Copilot release notes | <https://learn.microsoft.com/microsoft-365/copilot/release-notes> | Canonical, dated rolling list of new and changed Copilot features across Microsoft 365 apps. |
| Microsoft 365 Roadmap | <https://www.microsoft.com/microsoft-365/roadmap> | Public roadmap for Microsoft 365 and Copilot features by status. |

---

## 2. Microsoft Power Platform and Copilot Studio

### 2.1 Power Platform admin and maker portals

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Power Platform admin center (PPAC) | <https://admin.powerplatform.microsoft.com> | Environments, environment groups, tenant settings, security, monitoring, deployment (ALM), licensing, Copilot governance for Power Apps, Power Automate, Power Pages, Copilot Studio, and finance-and-operations apps. |
| PPAC -- Copilot hub (deep link) | <https://admin.powerplatform.microsoft.com/copilot> | Direct deep-link inside PPAC for managing Copilot agents and Copilot governance for Power Platform and Dynamics 365 products. |
| Power Apps maker portal | <https://make.powerapps.com> | Maker entry point: canvas apps, model-driven apps, plans, AI hub items, tables, connections, flows. |
| Power Automate maker portal | <https://make.powerautomate.com> | Cloud flows, desktop flows, approvals, process mining, AI hub, gateways. The standalone Power Automate admin center is retired; admins are redirected to PPAC. |
| Power Pages design studio | <https://make.powerpages.microsoft.com> | Build and manage Power Pages business websites. |
| Power Pages product page | <https://powerpages.microsoft.com> | Public marketing and trial sign-up. |
| Power BI service | <https://app.powerbi.com> | Cloud Power BI workspace; reach Fabric admin portal at Settings -> Admin portal. |
| Power BI / Fabric admin portal | <https://app.powerbi.com/admin-portal> | Tenant-level governance for Fabric and Power BI. |

### 2.2 Microsoft Copilot Studio

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Copilot Studio web app | <https://copilotstudio.microsoft.com> | Author, test, publish, and manage custom and declarative agents; topics, knowledge, tools, MCP, channels. |
| Copilot Studio docs hub | <https://learn.microsoft.com/microsoft-copilot-studio/> | Top-level docs (fundamentals, authoring, generative orchestration, knowledge, tools, MCP, voice, computer use, analytics, security, governance, licensing). |
| Copilot Studio implementation guidance | <https://learn.microsoft.com/microsoft-copilot-studio/guidance/implement-overview> | Curated implementation guide -- AI capabilities, RAG, generative orchestration, integrations, channels. |
| Copilot Studio Kit (docs) | <https://learn.microsoft.com/microsoft-copilot-studio/guidance/kit-overview> | Open-source Power CAT toolkit for testing, evaluation, governance, and agent value measurement. |
| Copilot Studio Kit (GitHub) | <https://github.com/microsoft/Power-CAT-Copilot-Studio-Kit> | Source for the Copilot Studio Kit, samples, and support intake. |
| Copilot Studio Kit (Marketplace install) | <https://aka.ms/DownloadCopilotStudioKit> | One-click Marketplace install of the Copilot Studio Kit into a Dataverse environment. |
| Copilot Studio + MCP | <https://learn.microsoft.com/microsoft-copilot-studio/agent-extend-action-mcp> | Register, authenticate, and consume MCP servers (tools and resources) inside an agent. |
| Copilot Studio connectors as tools | <https://learn.microsoft.com/microsoft-copilot-studio/advanced-connectors> | Standard, premium, and custom Power Platform connectors as tools, in topics, in agent flows, or as knowledge. |
| Copilot Studio voice mode | <https://learn.microsoft.com/microsoft-copilot-studio/voice-configuration> | Configure voice agents, DTMF, silence detection, real-time voice (semantic VAD, eagerness), Dynamics 365 Contact Center integration. |
| Copilot Studio Computer Use | <https://learn.microsoft.com/microsoft-copilot-studio/computer-use> | Preview agent tool that drives a Windows machine (hosted browser or Cloud PC pool) via OpenAI CUA or Anthropic Claude. |
| Copilot Studio agent flows | <https://learn.microsoft.com/microsoft-copilot-studio/flows-overview> | Power Automate-style automations authored inside Copilot Studio that an agent can call as a tool. |
| Copilot Studio analytics | <https://learn.microsoft.com/microsoft-copilot-studio/analytics-overview> | KPIs and dashboards for conversational and autonomous agents. |
| Copilot Studio extension for Visual Studio Code | <https://learn.microsoft.com/microsoft-copilot-studio/visual-studio-code-extension-overview> | Pro-code workflow: clone agents to a local workspace, edit YAML components with IntelliSense, sync back. |

### 2.3 Power Platform developer and ALM

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Power Platform CLI (pac) | <https://learn.microsoft.com/power-platform/developer/cli/introduction> | Cross-platform CLI (Windows MSI, .NET tool, VS Code extension) for ALM, solution pack/unpack, environment, pipeline, PCF, plug-in, Dataverse data ops. |
| Power Apps Component Framework (PCF) | <https://learn.microsoft.com/power-apps/developer/component-framework/overview> | Pro-developer framework to build TypeScript code components for canvas and model-driven apps. |
| Microsoft Power Fx | <https://learn.microsoft.com/power-platform/power-fx/overview> | Open-source Excel-inspired low-code formula language used across canvas, model-driven, Copilot Studio, Power Pages, Dataverse low-code plug-ins, desktop flows, PAC CLI. |
| Pipelines in Power Platform | <https://learn.microsoft.com/power-platform/alm/pipelines> | ALM automation and CI/CD service with deployment stages and Azure DevOps / GitHub integration. |
| Admin deployment hub (PPAC Deployment) | <https://learn.microsoft.com/power-platform/alm/admin-deployment-hub> | Tenant-wide visibility into pipelines hosts, run history, deployment approvals, custom hosts. |
| Solution checker | <https://learn.microsoft.com/power-apps/maker/data-platform/use-powerapps-checker> | Static analysis on unmanaged solutions against best-practice rules (plug-ins, web resources, flows, Power Fx). |
| Power Apps checker web API | <https://learn.microsoft.com/power-platform/alm/checker-api/overview> | Programmatic static analysis (web and PowerShell) against Dataverse customizations. |

### 2.4 Power Platform governance and capacity

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Managed Environments overview | <https://learn.microsoft.com/power-platform/admin/managed-environment-overview> | Premium PPAC capability bundle: environment groups, sharing limits, weekly insights, IP firewall, IP cookie binding, customer-managed key, lockbox, extended backup, default environment routing, virtual network support, conditional access, solution checker enforcement. |
| Data policies (DLP) | <https://learn.microsoft.com/power-platform/admin/wp-data-loss-prevention> | Classify connectors and desktop flow modules as Business, Non-business, or Blocked across tenant or specific environments. |
| Power Platform activity logs (in Purview) | <https://learn.microsoft.com/power-platform/admin/activity-logging-auditing/activity-logs-overview> | Component activity logs (Power Apps, Power Automate, Power Pages, Dataverse, connectors, Copilot Studio, Power Platform admin) surfaced in Purview audit. |
| AI Builder | <https://learn.microsoft.com/ai-builder/overview> | Power Platform AI hub (reached from `make.powerapps.com` or `make.powerautomate.com`) -- prebuilt and custom AI models. |

---

## 3. Microsoft Foundry and Azure AI

### 3.1 Microsoft Foundry portal and runtime

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Foundry portal | <https://ai.azure.com> | Primary destination to create projects, deploy models, build agents, configure guardrails, manage Foundry resources. Toggle "New Foundry" to switch between Foundry and Foundry (classic). |
| Microsoft Foundry portal -- GitHub Models entry | <https://ai.azure.com/GitHub> | Land architects coming from GitHub Models into a Foundry project to upgrade prototypes to production deployments. |
| Foundry Models catalog | <https://ai.azure.com/explore/models> | Browse, filter, and compare 1,900+ models (Azure OpenAI, Meta, Mistral, Cohere, NVIDIA, DeepSeek, Hugging Face, Microsoft) for an agentic workload. |
| Foundry Tools / Agent tools catalog | <https://ai.azure.com> -> Build -> Tools | Discover and configure built-in tools (Bing, Azure AI Search, Code Interpreter, MCP servers, etc.) for Foundry Agent Service. |
| Foundry Hubs and Projects admin | <https://ai.azure.com> -> Management Center | Hubs (classic), Foundry projects, connected resources, members, quotas. Underlying Azure resources are managed in `portal.azure.com`. |
| Foundry quotas / capacity admin | <https://ai.azure.com> -> Management -> Quota | View and request TPM/RPM quota across model deployments per region. |
| Azure OpenAI Studio (legacy) | <https://oai.azure.com> | Legacy Azure OpenAI portal. Direct users to Microsoft Foundry; still referenced in older content. |
| GitHub Models marketplace | <https://github.com/marketplace/models> | Free, rate-limited playground for evaluating models before deploying to a paid Foundry endpoint. |

### 3.2 Azure AI services and studios

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Azure AI Search (Cognitive Search) -- create | <https://portal.azure.com/#create/Microsoft.Search> | Provision Azure AI Search service; agentic retrieval / RAG backbone. |
| Azure AI Content Safety Studio | <https://contentsafety.cognitive.azure.com> | No-code studio: text and image moderation, blocklists, moderation workflows. Sub-pages: `/text`, `/image`, `/monitor`. |
| Vision Studio (Azure AI Vision and Face) | <https://portal.vision.cognitive.azure.com> | UI for OCR, image analysis, spatial analysis, Face. |
| Document Intelligence Studio (commercial) | <https://documentintelligence.ai.azure.com/studio> | Test prebuilt models (Read, Layout, Invoice), train custom extraction and classification, build labeling projects. Now redirects to Azure AI Content Understanding (`contentunderstanding.ai.azure.com`) -- see section 10. |
| Document Intelligence Studio (legacy alias) | <https://formrecognizer.appliedai.azure.com/studio> | Legacy alias; also redirects to Azure AI Content Understanding. |
| Custom Vision portal | <https://customvision.ai> | Custom image classification and object detection models (legacy, still referenced). |
| Speech Studio | <https://speech.microsoft.com> | Captioning, custom speech (STT fine-tuning), custom voice (TTS), audio content creation. Migration target: Microsoft Foundry. |
| Language Studio | <https://language.cognitive.azure.com> | CLU, custom NER, custom text classification, custom QA, orchestration projects. Migration target: Microsoft Foundry. |
| Custom Translator portal | <https://portal.customtranslator.azure.ai> | Train, test, publish custom NMT models for domain-specific terminology. |
| Azure Machine Learning studio | <https://ml.azure.com> | Notebooks, designer, AutoML, model registry, registries, MLOps. Home for classic ML training and pipelines. |

### 3.3 Foundry SDK, prompt flow, evaluation

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Foundry SDK overview | <https://learn.microsoft.com/azure/foundry/how-to/develop/sdk-overview> | Authoritative entry point for `azure-ai-projects` and friends. |
| `azure-ai-projects` (Python) reference | <https://learn.microsoft.com/python/api/overview/azure/ai-projects-readme> | Project client + OpenAI-compatible client to build agents, run evals, manage connections. |
| Prompt flow (Foundry classic) | <https://learn.microsoft.com/azure/foundry-classic/concepts/prompt-flow> | Prompt-flow LLM application authoring and evaluation (feature-development ended; see watchlist). |
| Azure AI Evaluation SDK | <https://learn.microsoft.com/python/api/overview/azure/ai-evaluation-readme> | Run prebuilt and custom evaluators (Groundedness, Relevance, Coherence, ContentSafety, Intent Resolution, Tool Call Accuracy) locally or as cloud evaluations. |
| AI red teaming agent | <https://learn.microsoft.com/azure/foundry/how-to/develop/run-scans-ai-red-teaming-agent> | Automated adversarial scans for generative AI. |
| Foundry observability concepts | <https://learn.microsoft.com/azure/foundry/concepts/observability> | Telemetry, evaluation, monitoring patterns for Foundry workloads. |

---

## 4. Azure platform admin and architecture

### 4.1 Azure tenant and subscription

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Azure portal | <https://portal.azure.com> | Root admin plane for every Azure resource, RBAC, networking, monitoring, Cost Management. |
| Azure Cost Management + Billing | <https://portal.azure.com/#blade/Microsoft_Azure_Billing/ModernBillingMenuBlade> | Cost analysis, budgets, alerts, exports, tag inheritance. FinOps lever for AI workloads. |
| Azure Cloud Shell | <https://shell.azure.com> | Browser terminal preinstalled with `az`, Azure PowerShell, Bicep, Python. |
| Azure DevOps | <https://dev.azure.com> | Boards, Repos, Pipelines, Artifacts, Test Plans. |
| Azure DevOps service status | <https://status.dev.azure.com> | Live status of dev.azure.com services. |

### 4.2 Azure governance and architecture

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Cloud Adoption Framework for Azure | <https://learn.microsoft.com/azure/cloud-adoption-framework/overview> | Strategy, Plan, Ready, Adopt, Govern, Manage, Secure methodologies. |
| CAF AI adoption scenario | <https://learn.microsoft.com/azure/cloud-adoption-framework/ai/> | Six-phase AI adoption (Strategy, Plan, Ready, Govern, Manage, Secure). The canonical "Microsoft AI adoption framework" referenced in AB-100 Plan content. |
| CAF AI agent adoption | <https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/> | Plan, govern, build, and manage AI agents (Copilot Studio + Foundry). |
| Azure Well-Architected Framework | <https://learn.microsoft.com/azure/well-architected/what-is-well-architected-framework> | Five pillars (Reliability, Security, Cost Optimization, Operational Excellence, Performance Efficiency). |
| Azure Well-Architected -- AI workload | <https://learn.microsoft.com/azure/well-architected/ai/get-started> | Pillar-aligned design areas for AI workloads. |
| Azure Well-Architected AI workload assessment | <https://learn.microsoft.com/assessments/ea306cce-c7fa-4a2b-89a6-bfefba6a9cf4/> | Self-assessment that scores an AI workload against Well-Architected pillars. |
| Azure Architecture Center | <https://learn.microsoft.com/azure/architecture/> | Solution ideas, reference architectures, design patterns, technology choice guides. |
| Architecture Center -- browse | <https://learn.microsoft.com/azure/architecture/browse/> | Filterable catalog of reference architectures. |
| AI architecture design | <https://learn.microsoft.com/azure/architecture/ai-ml/> | AI/ML reference architectures, RAG guidance, agent orchestration patterns. |
| Baseline Foundry chat in landing zone | <https://learn.microsoft.com/azure/architecture/ai-ml/architecture/baseline-microsoft-foundry-landing-zone> | Reference architecture: hub-and-spoke landing zone hosting a Foundry chat workload. |
| Power Platform Well-Architected | <https://learn.microsoft.com/power-platform/well-architected/> | Pillars (Reliability, Security, Operational Excellence, Performance Efficiency, Experience Optimization) for Power Platform workloads, including Intelligent Application. |
| Power Platform Well-Architected assessment | <https://aka.ms/powa/assessment> | Self-assessment that scores a workload against each Power Platform Well-Architected pillar checklist. |
| Power Platform and Copilot Studio Architecture Center | <https://learn.microsoft.com/power-platform/architecture/architecture-center-overview> | Reference architectures and decision frameworks for Power Platform and Copilot Studio. |
| Azure Policy | <https://learn.microsoft.com/azure/governance/policy/overview> | Define and enforce guardrails on Azure resources (allowed regions, tagging, encryption, diagnostic settings). |
| Bicep overview | <https://learn.microsoft.com/azure/azure-resource-manager/bicep/overview> | Declarative IaC for Azure -- preferred for Foundry resources. |

---

## 5. Dynamics 365 and business apps

### 5.1 Dynamics 365 entry points

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft 365 apps launcher | <https://www.office.com/apps> | Current Dynamics 365 entry tile for end users (Sales Hub, Sales Professional, etc.). |
| Dynamics 365 home (decommissioned) | <https://home.dynamics.com> | Legacy unified home page. DNS no longer resolves as of 2026-04. Reference only -- do not link from new docs. |

### 5.2 Customer-engagement apps (CE)

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Dynamics 365 Sales documentation | <https://learn.microsoft.com/dynamics365/sales/> | Capability mapping, security roles, integrations (Outlook, Teams, LinkedIn), Copilot in Sales. |
| Copilot in Dynamics 365 Sales | <https://learn.microsoft.com/dynamics365/sales/copilot-overview> | Record summarization, meeting prep, email assist, news updates. |
| Dynamics 365 Customer Service documentation | <https://learn.microsoft.com/dynamics365/customer-service/> | Cases, knowledge, omnichannel, unified routing, Copilot Service workspace. |
| Dynamics 365 Customer Insights -- product overview | <https://learn.microsoft.com/dynamics365/customer-insights/overview> | Combined CDP (Data) and real-time journey orchestration (Journeys). |
| Customer Insights -- Data app | <https://home.ci.ai.dynamics.com> | Direct sign-in for Customer Insights -- Data; environment management and segment authoring. |
| Customer Insights -- Journeys docs | <https://learn.microsoft.com/dynamics365/customer-insights/journeys/real-time-marketing-overview> | Trigger-based and segment-based journeys, channels, forms. |
| Dynamics 365 Field Service | <https://learn.microsoft.com/dynamics365/field-service/> | Work orders, scheduling, dispatch, Field Service mobile, Universal Resource Scheduling, Copilot. |
| Dynamics 365 Contact Center | <https://learn.microsoft.com/dynamics365/contact-center/> | AI-first contact center: telephony, IVR, unified routing, AI agents (Customer Assist, Quality Assurance, Service Operations). |

### 5.3 Finance-and-operations apps (F&O)

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Dynamics 365 Finance | <https://learn.microsoft.com/dynamics365/finance/finance-welcome> | Welcome and feature index for AP, AR, asset leasing, budgeting, cash and bank, cost accounting, fixed assets, Copilot finance experiences. |
| Copilot in F&O apps | <https://learn.microsoft.com/dynamics365/fin-ops-core/fin-ops/copilot/copilot-for-finance-operations> | Cross-app Copilot in Finance, Supply Chain, Project Operations, Commerce, HR -- including the Supplier Communications Agent. |
| Dynamics 365 Supply Chain Management | <https://learn.microsoft.com/dynamics365/supply-chain/supply-chain-management-welcome> | Inventory, master and demand planning, procurement, manufacturing, warehousing, transportation. |
| Dynamics 365 Project Operations | <https://learn.microsoft.com/dynamics365/project-operations/> | Contracts, scheduling, time entry, billing, Copilot for project. |
| Dynamics 365 Commerce | <https://learn.microsoft.com/dynamics365/commerce/welcome> | Commerce headquarters, Commerce Scale Unit, Store Commerce, e-Commerce site authoring. |
| Dynamics 365 Human Resources | <https://learn.microsoft.com/dynamics365/human-resources/> | Personnel, compensation, benefits, performance, leave, learning. |
| F&O cross-cutting developer/admin docs | <https://learn.microsoft.com/dynamics365/fin-ops-core/dev-itpro/> | X++, dual-write, deployment, ALM. |
| Unified admin experience for F&O apps | <https://learn.microsoft.com/power-platform/admin/unified-experience/finance-operations-apps-overview> | How environment, user, role, license, and capacity management for F&O now lives in PPAC (LCS replacement). |

### 5.4 Dynamics 365 Business Central

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Business Central app | <https://businesscentral.dynamics.com> | Direct sign-in for Business Central tenants. |
| Business Central administration center | `https://businesscentral.dynamics.com/<TENANT_ID>/admin` | Tenant admin portal for environments, notifications, environment access, Application Insights telemetry. |
| Business Central admin center API | <https://api.businesscentral.dynamics.com> | REST API for programmatic admin operations. |
| Business Central documentation | <https://learn.microsoft.com/dynamics365/business-central/> | Product docs and ITPro guidance. |

### 5.5 Lifecycle Services

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Dynamics Lifecycle Services (LCS) | <https://lcs.dynamics.com> | Legacy implementation portal for F&O environments and projects. New customers should use PPAC; existing projects continue here for issue search and support. |
| LCS sign-in | <https://lcs.dynamics.com/Logon/Index> | Direct sign-in path used in onboarding documentation. |

### 5.6 Microsoft 365 Copilot for Sales / for Service

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Sales agent in Microsoft 365 Copilot (docs) | <https://learn.microsoft.com/microsoft-sales-copilot/> | Admin and feature documentation for the Sales agent (formerly Microsoft 365 Copilot for Sales). |
| Service in Microsoft 365 Copilot (docs) | <https://learn.microsoft.com/microsoft-copilot-service/> | Admin and deployment documentation for the Service offering (formerly Microsoft 365 Copilot for Service). |
| Service in Microsoft 365 Copilot product page | <https://www.microsoft.com/microsoft-copilot/microsoft-copilot-for-service> | Product marketing and license source. |

### 5.7 Industry, marketplace, and partner

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Industry documentation | <https://learn.microsoft.com/industry/> | Umbrella docs for Microsoft industry clouds (Healthcare, Financial Services, Retail, Manufacturing, Sustainability, Nonprofit, Sovereign). |
| Microsoft AppSource | <https://appsource.microsoft.com> | Storefront for business applications that extend Dynamics 365, Microsoft 365, Power Platform. |
| Microsoft Marketplace | <https://marketplace.microsoft.com> | Unified storefront for cloud solutions and AI agents. |
| Azure Marketplace | <https://azuremarketplace.microsoft.com> | Azure-focused marketplace storefront. |
| Microsoft commercial marketplace (publisher docs) | <https://learn.microsoft.com/marketplace/> | Offer types, certification, private offers, MACC eligibility. |

### 5.8 Dynamics 365 community and samples

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Dynamics-365-FastTrack-Implementation-Assets (GitHub) | <https://github.com/microsoft/Dynamics-365-FastTrack-Implementation-Assets> | Microsoft FastTrack-curated samples, scripts, integrations across Commerce, Finance, Supply Chain, Customer Service, Field Service, Project Operations. |
| Microsoft Dynamics 365 community | <https://community.dynamics.com> | Forums, blogs, TechTalk videos. |
| Dynamics 365 release plans | <https://learn.microsoft.com/dynamics365/release-plans/> | Twice-yearly release wave plan documentation. |
| Dynamics 365 Application Ideas | <https://experience.dynamics.com/ideas/> | Submit and vote on Dynamics 365 feature requests. |

---

## 6. Identity, security, and compliance

### 6.1 Microsoft Entra (identity)

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Entra admin center | <https://entra.microsoft.com> | Unified portal: Entra ID, ID Protection, Identity Governance, Verified ID, Global Secure Access. |
| Conditional Access (in Entra) | <https://entra.microsoft.com> -> Protection -> Conditional Access | Risk-based, signal-driven access policies that gate users, devices, sessions before they reach AI agents and resources. |
| Privileged Identity Management (PIM) | <https://entra.microsoft.com> -> ID Governance -> Privileged Identity Management | Just-in-time, time-bound, approval-based activation of privileged Entra and Azure roles. |
| ID Governance (entitlement, reviews, lifecycle) | <https://entra.microsoft.com> -> ID Governance | Govern access lifecycle for users, guests, and agent identities. |
| Verified ID | <https://entra.microsoft.com> -> Verified ID | Issue and verify W3C verifiable credentials. |
| External ID | <https://entra.microsoft.com> -> External Identities | B2B collaboration in workforce tenants, CIAM in external tenants. |

### 6.2 Microsoft Defender (XDR + cloud)

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Defender portal | <https://security.microsoft.com> | Unified XDR portal: Defender for Endpoint, Office 365, Identity, Cloud, Cloud Apps, Sentinel-in-Defender. |
| Microsoft Secure Score | <https://security.microsoft.com/securescore> | Tenant-wide identity, device, app, data security posture with prioritized recommended actions. |
| Microsoft Defender for Cloud (Azure entry) | <https://portal.azure.com/#blade/Microsoft_Azure_Security/SecurityMenuBlade> | CSPM and CWPP across Azure, AWS, GCP, on-premises; AI threat protection plan for generative AI workloads. |
| Microsoft Sentinel (Azure entry) | <https://portal.azure.com> (search "Microsoft Sentinel") | SIEM/SOAR workspace administration, data connectors, content hub. |

### 6.3 Microsoft Purview (governance and compliance)

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Purview portal | <https://purview.microsoft.com> | Unified data governance, data security, compliance solutions. The Copilot "Data security and compliance" node deep-links here. |
| Microsoft Purview compliance portal (legacy) | <https://compliance.microsoft.com> | Older compliance portal; Microsoft is consolidating into `purview.microsoft.com`. |
| Purview Compliance Manager | <https://compliance.microsoft.com/compliancemanager> | Risk-based compliance score, premium assessment templates (including AI regulations), improvement actions. |
| Purview DSPM for AI | <https://purview.microsoft.com> -> Solutions -> DSPM for AI | Discover sensitive data flowing into Microsoft 365 Copilot, agents, third-party AI sites; preconfigured policies. |

### 6.4 Microsoft Trust and privacy

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Service Trust Portal | <https://servicetrust.microsoft.com> | Audit reports (ISO, SOC, FedRAMP, PCI), assessment reports, compliance whitepapers. |
| Microsoft Trust Center | <https://www.microsoft.com/trust-center> | Public security, privacy, compliance, transparency hub across Microsoft cloud. |
| Microsoft Privacy Statement | <https://www.microsoft.com/privacy/privacystatement> | Master privacy notice across all products. |

### 6.5 Responsible AI

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Responsible AI principles and approach | <https://www.microsoft.com/ai/principles-and-approach> | Six RAI principles, Responsible AI Standard, governance model, RAI Transparency Report. |
| Microsoft Responsible AI overview (legacy URL) | <https://www.microsoft.com/ai/responsible-ai> | RAI portal -- tools, dashboards, transparency notes, HAX Workbook. |
| Responsible AI Toolbox (open source) | <https://responsibleaitoolbox.ai/> | RAI Dashboard, error analysis, fairness, interpretability tools. |
| Foundry -- Azure OpenAI Transparency Note | <https://learn.microsoft.com/azure/foundry/responsible-ai/openai/transparency-note> | Transparency Note for Azure OpenAI in Microsoft Foundry. |
| Foundry -- Risk and safety evaluations Transparency Note | <https://learn.microsoft.com/azure/foundry/concepts/safety-evaluations-transparency-note> | Transparency Note for Foundry safety evaluators. |
| Foundry Agent Service Transparency Note | <https://learn.microsoft.com/azure/foundry/responsible-ai/agents/transparency-note> | Transparency Note for agents built on Foundry Agent Service. |

---

## 7. Governance, adoption, and Centers of Excellence

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Power Platform CoE Starter Kit -- docs | <https://learn.microsoft.com/power-platform/guidance/coe/starter-kit> | Canonical landing for the CoE Starter Kit (governance, admin, nurture). |
| CoE Starter Kit -- download | <https://aka.ms/CoEStarterKitDownload> | Direct download of the CoE solution and Power BI templates. |
| CoE Starter Kit -- GitHub | <https://github.com/microsoft/coe-starter-kit> | Source repository with releases and issues. Short link: <https://aka.ms/CoEStarterKitRepo>. |
| Power Platform adoption guidance | <https://learn.microsoft.com/power-platform/guidance/adoption/methodology> | Adoption playbook -- vision, KPIs, governance, environment strategy, DLP, nurture, champions, ALM, security. |
| Power Platform adoption maturity model | <https://learn.microsoft.com/power-platform/guidance/adoption/maturity-model> | Five-level capability model across strategy, governance, automation, fusion teams, support, security, business value, community, responsible AI. |
| Power CAT landing | <https://microsoft.github.io/powercat/> | Microsoft engineering team behind CoE Starter Kit, Copilot Studio Kit, ALM Accelerator, Well-Architected guidance. Short link: <https://aka.ms/whoispowercat>. |
| Microsoft AI CoE learning path | <https://learn.microsoft.com/training/paths/ai-center-excellence/> | Three-module Microsoft Learn path on AI CoE purpose, AI workload operations, AI landing zones. |
| CAF AI agent CoE policies | <https://learn.microsoft.com/azure/cloud-adoption-framework/ai-agents/responsible-ai-across-organization> | Cross-org AI policy guidance. |

---

## 8. Learning, community, and certification logistics

### 8.1 Microsoft Learn and credentials

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Learn home | <https://learn.microsoft.com/> | Root of all Microsoft technical documentation and training. |
| Credentials and Certifications hub | <https://learn.microsoft.com/credentials/> | Browse certifications and Applied Skills. |
| Browse credentials | <https://learn.microsoft.com/credentials/browse/> | Filter by product, role, level, subject. |
| AB-100 certification page | <https://learn.microsoft.com/credentials/certifications/agentic-ai-business-solutions-architect/> | Canonical AB-100 overview, prerequisites, study guide, exam sandbox links. |
| AB-100 exam page | <https://learn.microsoft.com/credentials/certifications/exams/ab-100/> | Exam details and registration entry. |
| AB-100 study guide | <https://learn.microsoft.com/credentials/certifications/resources/study-guides/ab-100> | Verbatim Microsoft skills-measured outline. Short link: <https://aka.ms/AB100-StudyGuide>. |
| Exam Readiness Zone | <https://learn.microsoft.com/shows/exam-readiness-zone/> | Microsoft-produced exam prep videos. |

### 8.2 Community

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Q&A | <https://learn.microsoft.com/answers/> | Official technical Q&A across .NET, Azure, Entra, Microsoft 365, Security. |
| Microsoft Tech Community | <https://techcommunity.microsoft.com/> | Product-team blogs, discussions, events. |
| Microsoft MVP community hub | <https://techcommunity.microsoft.com/category/mvp> | MVP community channel referenced in AB-100 study guide. |
| Microsoft Reactor | <https://reactor.microsoft.com/> | Developer and startup events, training, AI community sessions. |
| Microsoft Build event hub | <https://build.microsoft.com/> | Annual developer conference. |
| Microsoft Ignite event hub | <https://ignite.microsoft.com/> | Annual conference for IT pros, developers, decision makers. |
| Microsoft Source (news) | <https://news.microsoft.com/source/> | Microsoft's official news platform. |
| Microsoft AI news | <https://news.microsoft.com/source/topics/ai/> | AI-focused stories. The legacy `blogs.microsoft.com/ai/` 301-redirects here. |

### 8.3 Certification logistics

| Display name | URL | What an architect uses it for |
| --- | --- | --- |
| Microsoft Certification dashboard | <https://learn.microsoft.com/users/me/certifications> | View certifications, renewal eligibility, score reports, Pearson VUE profile. Short link: <https://aka.ms/ManageCerts>. |
| Pearson VUE -- Microsoft exam page | <https://home.pearsonvue.com/microsoft> | Schedule, reschedule, cancel Microsoft Certification exams. |
| Certification renewal | <https://learn.microsoft.com/credentials/certifications/renew-your-microsoft-certification> | Free annual renewal assessment (open-book, unproctored). |
| Request exam accommodations | <https://learn.microsoft.com/credentials/certifications/request-accommodations> | Extra time, assistive technology, environmental modifications. |
| Available accommodations and documentation | <https://learn.microsoft.com/credentials/certifications/available-exam-accommodations-document-requirements> | List of accommodations and acceptable verification documents. |
| Exam scoring and score reports | <https://learn.microsoft.com/credentials/certifications/exam-scoring-reports> | 1-1000 scaled score, 700 passing threshold, score-report retrieval. |
| Exam sandbox | <https://aka.ms/examdemo> | Demo of the live exam interface. |
| Candidate Agreement (the "NDA") | <https://learn.microsoft.com/credentials/support/certification-exam-candidate-agreement> | Confidentiality, misconduct, privacy, score-challenge terms. |
| Certification Program Agreement | <https://learn.microsoft.com/credentials/certifications/microsoft-certification-program-agreement> | Top-level program agreement governing Microsoft credentials. |
| Renewal Assessment Agreement | <https://learn.microsoft.com/credentials/certifications/microsoft-certification-renewal-agreement> | Confidentiality terms for the unproctored renewal assessment. |
| Exam policies and FAQs | <https://learn.microsoft.com/credentials/certifications/certification-exam-policies> | Hub: retake, reschedule and cancellation, beta exams, item challenge, college credit. |
| Exam retake policy | <https://learn.microsoft.com/credentials/support/retake-policy> | Wait times between attempts. |
| Exam reschedule and cancellation policy | <https://learn.microsoft.com/credentials/certifications/exam-reschedule-and-cancellation-policy> | Rescheduling and refund windows. |
| Exam duration and exam experience | <https://learn.microsoft.com/credentials/support/exam-duration-exam-experience> | Question counts, exam vs seat duration, break rules. |
| Exam and assessment lab security policy | <https://learn.microsoft.com/credentials/support/exam-and-assessment-lab-security-policies> | Ethical conduct, confidentiality, AI-assistance prohibition. |

---

## 9. Sovereign cloud equivalents

Reference for AB-100 candidates targeting US Government clouds.

| Service | Commercial | US Gov (GCC / GCC High / DoD) |
| --- | --- | --- |
| Microsoft Foundry portal | <https://ai.azure.com> | <https://ai.azure.us> |
| Azure OpenAI Studio (legacy) | <https://oai.azure.com> | <https://aoai.azure.us> |
| Azure portal | <https://portal.azure.com> | <https://portal.azure.us> |
| Document Intelligence Studio | <https://documentintelligence.ai.azure.com/studio> | <https://formrecognizer.appliedai.azure.us/studio> |
| Microsoft 365 Apps admin center (Cloud Policy) | <https://config.office.com> | GCC High <https://config.office365.us>, DoD <https://config.apps.mil> |
| Microsoft Intune admin center | <https://intune.microsoft.com> | <https://intune.microsoft.us> |
| Power Platform admin center | <https://admin.powerplatform.microsoft.com> | GCC <https://gcc.admin.powerplatform.microsoft.us>, GCC High <https://high.admin.powerplatform.microsoft.us> |
| Copilot Studio | <https://copilotstudio.microsoft.com> | GCC <https://gcc.powerva.microsoft.us>, GCC High <https://high.powerva.microsoft.us> |

---

## 10. Retirement and migration watchlist

Items below are scheduled for retirement or have been deprecated. AB-100
candidates need to know the migration target.

| Item | Status | Migration target |
| --- | --- | --- |
| Microsoft Entra Permissions Management (standalone) | Retired October 1, 2025 | Microsoft Defender for Cloud -- Defender CSPM (CIEM capabilities). |
| Document Intelligence Studio | Folded into Azure AI Content Understanding | <https://contentunderstanding.ai.azure.com/> -- both the commercial host and the `formrecognizer.appliedai.azure.com` legacy alias now permanent-redirect there. |
| Prompt flow (Foundry classic) | Feature development ended April 20, 2026; retirement April 20, 2027 | Microsoft Agent Framework. |
| Foundry Agents (classic) | Retiring March 31, 2027 | Microsoft Foundry Agents Service (GA). |
| Language Studio export | Retires March 20, 2027 | Microsoft Foundry. |
| Dynamics 365 home (`home.dynamics.com`) | Decommissioned (DNS no longer resolves as of 2026-04) | <https://www.office.com/apps>. |
| OneDrive admin center (standalone) | Retired | SharePoint admin center (`admin.microsoft.com/sharepoint`). |
| Microsoft Learn sandbox | Retired | Azure free trial or pay-as-you-go subscription. |
| `blogs.microsoft.com/ai/` | Permanent 301 redirect | <https://news.microsoft.com/source/topics/ai/>. |
| Power Automate standalone admin center | Retired | Power Platform admin center. |
| Microsoft 365 Copilot for Sales (name) | Renamed | "Sales agent in Microsoft 365 Copilot" -- docs at <https://learn.microsoft.com/microsoft-sales-copilot/>. |
| Microsoft 365 Copilot for Service (name) | Renamed | "Service in Microsoft 365 Copilot" -- docs at <https://learn.microsoft.com/microsoft-copilot-service/>. |

---

## Verification methodology

Every URL in this document was sourced or cross-checked through one of the
following channels on 2026-04-29:

1. **Microsoft Learn MCP server** -- `microsoft_docs_search` and
   `microsoft_docs_fetch` against `learn.microsoft.com`. Authoritative for any
   `learn.microsoft.com` path and for portal hostnames cited in Microsoft Learn
   prose.
2. **WebFetch** -- direct HTTP retrieval of `microsoft.com`, `aka.ms`, and
   `github.com` URLs to confirm reachability and page identity.
3. **Subsequent verifier round** -- a second pass of HTTP HEAD/GET checks
   confirmed every public URL in this document responds with HTTP 200, an
   intentional redirect chain that resolves to 200, or an authentication gate
   that returns 200 after sign-in (the underlying host was reachable).

URLs that could not be verified directly (for example because they require
authentication) are marked as such or omitted. Do not invent Microsoft Learn
URLs -- if a URL cannot be verified with the MCP tools, do not add it to this
document.

## Maintenance

When Microsoft renames a portal, retires a service, or changes a canonical URL,
update this document in the same PR that touches `docs/ab100-exam-objectives.md`
or the affected hour scaffolding. Add an entry to section 10 (Retirement and
migration watchlist) for any deprecation. Re-run the verifier round before
merging.
