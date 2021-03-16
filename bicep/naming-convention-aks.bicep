targetScope = 'subscription'

module aks '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-aks'
  params: {
    pattern: 'aks-*'
    policyName: 'policy-naming-convention-aks'
    assignmentName: 'assignment-naming-convention-aks'
    type: 'Microsoft.ContainerService/managedClusters'
  }
}
