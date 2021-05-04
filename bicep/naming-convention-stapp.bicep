targetScope = 'subscription'

module stapp '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-stapp'
  params: {
    pattern: 'stapp-*'
    policyName: 'policy-naming-convention-stapp'
    assignmentName: 'assignment-naming-convention-stapp'
    type: 'Microsoft.Web/staticSites'
  }
}
