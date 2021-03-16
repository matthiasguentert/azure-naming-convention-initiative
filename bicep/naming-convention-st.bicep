targetScope = 'subscription'

module st '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-st'
  params: {
    pattern: 'st*'
    policyName: 'policy-naming-convention-st'
    assignmentName: 'assignment-naming-convention-st'
    type: 'Microsoft.Storage/storageAccounts'
  }
}
