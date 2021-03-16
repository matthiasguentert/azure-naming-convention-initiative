targetScope = 'subscription'

module policy '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-policy'
  params: {
    pattern: 'policy-*'
    policyName: 'policy-naming-convention-policy'
    assignmentName: 'assignment-naming-convention-policy'
    type: 'Microsoft.Authorization/policyDefinitions'
  }
}
