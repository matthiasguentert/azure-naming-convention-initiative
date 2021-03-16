targetScope = 'subscription'

module app '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-app'
  params: {
    pattern: 'app-*'
    policyName: 'policy-naming-convention-app'
    assignmentName: 'assignment-naming-convention-app'
    type: 'Microsoft.Web/sites'
  }
}
