@description('Short prefix used to name the Log Analytics workspace.')
param namePrefix string

@description('Azure region.')
param location string

@description('Resource tags.')
param tags object = {}

@description('Workspace retention in days.')
param retentionInDays int = 30

resource workspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: '${namePrefix}-logs'
  location: location
  tags: tags
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: retentionInDays
    features: {
      enableLogAccessUsingOnlyResourcePermissions: true
    }
  }
}

output id string = workspace.id
output name string = workspace.name
output customerId string = workspace.properties.customerId
#disable-next-line outputs-should-not-contain-secrets
output primarySharedKey string = workspace.listKeys().primarySharedKey
