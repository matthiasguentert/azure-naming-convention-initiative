targetScope = 'managementGroup'

module st '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-st'
  scope: managementGroup()
  params: {
    pattern: 'st*'
    policyName: 'policy-naming-convention-st'
    assignmentName: 'assignment-naming-convention-st'
    type: 'Microsoft.Storage/storageAccounts'
  }
}
