targetScope = 'subscription'

module vgw '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-vgw'
  params: {
    pattern: 'vgw-*'
    policyName: 'policy-naming-convention-vgw'
    assignmentName: 'assignment-naming-convention-vgw'
    type: 'Microsoft.Network/virtualNetworkGateways'
  }
}