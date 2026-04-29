@description('Short prefix used to name the user-assigned managed identity.')
param namePrefix string

@description('Azure region.')
param location string

@description('Resource tags.')
param tags object = {}

resource uami 'Microsoft.ManagedIdentity/userAssignedIdentities@2023-01-31' = {
  name: '${namePrefix}-uami'
  location: location
  tags: tags
}

output id string = uami.id
output principalId string = uami.properties.principalId
output clientId string = uami.properties.clientId
output name string = uami.name
