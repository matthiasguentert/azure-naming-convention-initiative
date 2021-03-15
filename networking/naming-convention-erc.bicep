targetScope = 'subscription'

module erc '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-erc'
  params: {
    pattern: 'erc-*'
    policyName: 'policy-naming-convention-erc'
    assignmentName: 'assignment-naming-convention-erc'
    type: 'Microsoft.Network/expressRouteCircuits'
  }
}