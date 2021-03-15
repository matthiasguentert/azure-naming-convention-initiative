targetScope = 'subscription'

module mi '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-mi'
  params: {
    pattern: 'mi-*'
    policyName: 'policy-naming-convention-mi'
    assignmentName: 'assignment-naming-convention-mi'
    type: 'Microsoft.ManagedIdentity/userAssignedIdentitie'
  }
}