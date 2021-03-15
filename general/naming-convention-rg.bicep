targetScope = 'subscription'

module rg '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-rg'
  params: {
    pattern: 'rg-*'
    policyName: 'policy-naming-convention-rg'
    assignmentName: 'assignment-naming-convention-rg'
    type: 'Microsoft.Resources/subscriptions/resourceGroups'
  }
}