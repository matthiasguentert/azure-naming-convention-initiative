targetScope = 'subscription'

module cn '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-cn'
  params: {
    pattern: 'cn-*'
    policyName: 'policy-naming-convention-cn'
    assignmentName: 'assignment-naming-convention-cn'
    type: 'Microsoft.Network/vpnGateways/vpnConnections'
  }
}