targetScope = 'subscription'

module lgw '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-lgw'
  params: {
    pattern: 'lgw-*'
    policyName: 'policy-naming-convention-lgw'
    assignmentName: 'assignment-naming-convention-lgw'
    type: 'Microsoft.Network/localNetworkGateways'
  }
}