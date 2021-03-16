targetScope = 'subscription'

module peer '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-peer'
  params: {
    pattern: 'peer-*'
    policyName: 'policy-naming-convention-peer'
    assignmentName: 'assignment-naming-convention-peer'
    type: 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings'
  }
}
