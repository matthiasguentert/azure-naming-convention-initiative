targetScope = 'subscription'

module id '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-id'
  params: {
    pattern: 'id-*'
    policyName: 'policy-naming-convention-id'
    assignmentName: 'assignment-naming-convention-id'
    type: 'Microsoft.ManagedIdentity/userAssignedIdentities'
  }
}
