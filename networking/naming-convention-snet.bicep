targetScope = 'subscription'

module snet '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-snet'
  params: {
    pattern: 'snet-*'
    policyName: 'policy-naming-convention-snet'
    assignmentName: 'assignment-naming-convention-snet'
    type: 'Microsoft.Network/virtualNetworks/subnets'
  }
}