@description('Short prefix used to name the ACA env and Container App.')
param namePrefix string

@description('Azure region.')
param location string

@description('Resource tags.')
param tags object = {}

@description('Container image reference, e.g. <acr>.azurecr.io/ab100-mcp:latest.')
param containerImage string

@description('Foundry project endpoint forwarded to the container as PROJECT_ENDPOINT.')
param projectEndpoint string

@description('Foundry agent ID forwarded to the container as AGENT_ID (used for traceability/logging).')
param agentId string

@description('Foundry agent name -- used as get_openai_client(agent_name=...) to bind to the agent endpoint.')
param agentName string = 'ab100-demo-agent'

@description('User-assigned managed identity resource ID.')
param uamiId string

@description('User-assigned managed identity client ID (forwarded as AZURE_CLIENT_ID).')
param uamiClientId string

@description('ACR login server, used as the registries server entry.')
param acrLoginServer string

@description('Log Analytics workspace customer ID.')
param logsCustomerId string

@description('Log Analytics workspace primary shared key.')
@secure()
param logsPrimaryKey string

@description('Container TCP port. Must match EXPOSE in the Dockerfile.')
param targetPort int = 8080

resource environment 'Microsoft.App/managedEnvironments@2025-01-01' = {
  name: '${namePrefix}-aca-env'
  location: location
  tags: tags
  properties: {
    appLogsConfiguration: {
      destination: 'log-analytics'
      logAnalyticsConfiguration: {
        customerId: logsCustomerId
        sharedKey: logsPrimaryKey
      }
    }
  }
}

resource app 'Microsoft.App/containerApps@2025-01-01' = {
  name: '${namePrefix}-aca'
  location: location
  tags: tags
  identity: {
    type: 'UserAssigned'
    userAssignedIdentities: {
      '${uamiId}': {}
    }
  }
  properties: {
    managedEnvironmentId: environment.id
    configuration: {
      activeRevisionsMode: 'Single'
      ingress: {
        external: true
        targetPort: targetPort
        transport: 'http'
        allowInsecure: false
      }
      registries: [
        {
          server: acrLoginServer
          identity: uamiId
        }
      ]
    }
    template: {
      containers: [
        {
          name: 'mcp'
          image: containerImage
          resources: {
            cpu: json('0.5')
            memory: '1Gi'
          }
          env: [
            {
              name: 'PROJECT_ENDPOINT'
              value: projectEndpoint
            }
            {
              name: 'AGENT_ID'
              value: agentId
            }
            {
              name: 'AGENT_NAME'
              value: agentName
            }
            {
              name: 'AZURE_CLIENT_ID'
              value: uamiClientId
            }
            {
              name: 'PORT'
              value: string(targetPort)
            }
            {
              name: 'LOG_LEVEL'
              value: 'INFO'
            }
          ]
          probes: [
            {
              type: 'Liveness'
              httpGet: {
                path: '/health'
                port: targetPort
                scheme: 'HTTP'
              }
              initialDelaySeconds: 10
              periodSeconds: 30
              timeoutSeconds: 5
              failureThreshold: 3
            }
            {
              type: 'Readiness'
              httpGet: {
                path: '/health'
                port: targetPort
                scheme: 'HTTP'
              }
              initialDelaySeconds: 5
              periodSeconds: 15
              timeoutSeconds: 5
              failureThreshold: 3
            }
          ]
        }
      ]
      scale: {
        minReplicas: 1
        maxReplicas: 1
      }
    }
  }
}

output id string = app.id
output name string = app.name
output fqdn string = app.properties.configuration.ingress.fqdn
output environmentId string = environment.id
