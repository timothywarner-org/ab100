@description('Short prefix used to derive the APIM service name.')
param namePrefix string

@description('Azure region.')
param location string

@description('Resource tags.')
param tags object = {}

@description('APIM publisher email.')
param publisherEmail string

@description('APIM publisher name.')
param publisherName string

@description('FQDN of the ACA Container App that backs the MCP API.')
param acaFqdn string

var apimName = toLower('${namePrefix}-apim-${uniqueString(resourceGroup().id)}')
var backendName = 'aca-backend'
var apiName = 'foundry-mcp'
var subscriptionName = 'foundry-mcp-sub'

resource service 'Microsoft.ApiManagement/service@2023-05-01-preview' = {
  name: apimName
  location: location
  tags: tags
  sku: {
    name: 'Consumption'
    capacity: 0
  }
  properties: {
    publisherEmail: publisherEmail
    publisherName: publisherName
  }
}

resource backend 'Microsoft.ApiManagement/service/backends@2023-05-01-preview' = {
  parent: service
  name: backendName
  properties: {
    protocol: 'http'
    url: 'https://${acaFqdn}'
    tls: {
      validateCertificateChain: true
      validateCertificateName: true
    }
  }
}

resource api 'Microsoft.ApiManagement/service/apis@2023-05-01-preview' = {
  parent: service
  name: apiName
  properties: {
    displayName: 'Foundry MCP'
    description: 'AB-100 POC: MCP server in front of an Azure AI Foundry agent.'
    path: 'mcp'
    protocols: [
      'https'
    ]
    subscriptionRequired: true
    serviceUrl: 'https://${acaFqdn}'
  }
}

resource postOperation 'Microsoft.ApiManagement/service/apis/operations@2023-05-01-preview' = {
  parent: api
  name: 'post'
  properties: {
    displayName: 'MCP JSON-RPC'
    method: 'POST'
    urlTemplate: '/'
    description: 'Forwards MCP JSON-RPC requests to the ACA backend.'
  }
}

resource apiPolicy 'Microsoft.ApiManagement/service/apis/policies@2023-05-01-preview' = {
  parent: api
  name: 'policy'
  properties: {
    format: 'rawxml'
    value: loadTextContent('../../policies/apim-inbound.xml')
  }
  dependsOn: [
    backend
  ]
}

resource subscription 'Microsoft.ApiManagement/service/subscriptions@2023-05-01-preview' = {
  parent: service
  name: subscriptionName
  properties: {
    displayName: 'AB-100 POC subscription'
    scope: '/apis/${api.name}'
    state: 'active'
    allowTracing: true
  }
}

output id string = service.id
output name string = service.name
output gatewayUrl string = service.properties.gatewayUrl
output subscriptionResourceId string = subscription.id
