targetScope = 'subscription'

module stap '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-stap'
  params: {
    pattern: 'stap-*'
    policyName: 'policy-naming-convention-stap'
    assignmentName: 'assignment-naming-convention-stap'
    type: 'Microsoft.Web/staticSites'
  }
}
