@description('Short prefix used to derive the ACR name.')
param namePrefix string

@description('Azure region.')
param location string

@description('Resource tags.')
param tags object = {}

@description('Principal ID of the user-assigned managed identity that needs AcrPull.')
param uamiPrincipalId string

var acrName = toLower('${namePrefix}acr${uniqueString(resourceGroup().id)}')

resource registry 'Microsoft.ContainerRegistry/registries@2023-07-01' = {
  name: acrName
  location: location
  tags: tags
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: false
    publicNetworkAccess: 'Enabled'
  }
}

var acrPullRoleId = '7f951dda-4ed3-4680-a7ca-43fe172d538d'

resource pullAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(registry.id, uamiPrincipalId, acrPullRoleId)
  scope: registry
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', acrPullRoleId)
    principalId: uamiPrincipalId
    principalType: 'ServicePrincipal'
  }
}

output id string = registry.id
output name string = registry.name
output loginServer string = registry.properties.loginServer
