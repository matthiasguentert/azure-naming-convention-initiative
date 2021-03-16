targetScope = 'subscription'

module ia '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-ia'
  params: {
    pattern: 'ia-*'
    policyName: 'policy-naming-convention-ia'
    assignmentName: 'assignment-naming-convention-ia'
    type: 'Microsoft.Logic/integrationAccounts'
  }
}
