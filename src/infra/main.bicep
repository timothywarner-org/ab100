targetScope = 'resourceGroup'

@description('Short prefix used to name every resource in the stack.')
@minLength(2)
@maxLength(10)
param namePrefix string = 'ab100'

@description('Azure region for all resources.')
param location string = resourceGroup().location

@description('Foundry project endpoint, e.g. https://<account>.services.ai.azure.com/api/projects/<project>.')
param projectEndpoint string

@description('Foundry agent ID (e.g. asst_xxxxxxxxxxxxxxxx) -- forwarded for traceability.')
param agentId string

@description('Foundry agent name (used to bind the OpenAI client to the agent endpoint).')
param agentName string = 'ab100-demo-agent'

@description('Container image reference, e.g. <acr>.azurecr.io/ab100-mcp:latest.')
param containerImage string

@description('APIM publisher email.')
param apimPublisherEmail string

@description('APIM publisher name shown in the developer portal.')
param apimPublisherName string = 'Tim Warner'

var tags = {
  project: 'ab100'
  scenario: 'foundry-mcp-poc'
  owner: apimPublisherName
}

module identity 'modules/identity.bicep' = {
  name: 'identity'
  params: {
    namePrefix: namePrefix
    location: location
    tags: tags
  }
}

module logs 'modules/logs.bicep' = {
  name: 'logs'
  params: {
    namePrefix: namePrefix
    location: location
    tags: tags
  }
}

module acr 'modules/acr.bicep' = {
  name: 'acr'
  params: {
    namePrefix: namePrefix
    location: location
    tags: tags
    uamiPrincipalId: identity.outputs.principalId
  }
}

module aca 'modules/aca.bicep' = {
  name: 'aca'
  params: {
    namePrefix: namePrefix
    location: location
    tags: tags
    containerImage: containerImage
    projectEndpoint: projectEndpoint
    agentId: agentId
    agentName: agentName
    uamiId: identity.outputs.id
    uamiClientId: identity.outputs.clientId
    acrLoginServer: acr.outputs.loginServer
    logsCustomerId: logs.outputs.customerId
    logsPrimaryKey: logs.outputs.primarySharedKey
  }
}

module apim 'modules/apim.bicep' = {
  name: 'apim'
  params: {
    namePrefix: namePrefix
    location: location
    tags: tags
    publisherEmail: apimPublisherEmail
    publisherName: apimPublisherName
    acaFqdn: aca.outputs.fqdn
  }
}

output acaFqdn string = aca.outputs.fqdn
output acaName string = aca.outputs.name
output acrLoginServer string = acr.outputs.loginServer
output acrName string = acr.outputs.name
output apimGatewayUrl string = apim.outputs.gatewayUrl
output apimName string = apim.outputs.name
output apimSubscriptionResourceId string = apim.outputs.subscriptionResourceId
output uamiPrincipalId string = identity.outputs.principalId
output uamiClientId string = identity.outputs.clientId
