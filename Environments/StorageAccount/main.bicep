param location string = resourceGroup().location
param storageAccountName string = 'difjckvxozdi3sdf'
param skuName string = 'Standard_LRS'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
    name: storageAccountName
    location: location
    sku: {
      name: skuName
    }
    kind: 'StorageV2'
    properties: {
      accessTier: 'Hot'
    }
  }
  