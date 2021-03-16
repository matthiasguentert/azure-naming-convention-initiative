targetScope = 'subscription'

module nsg '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-nsg'
  params: {
    pattern: 'nsg-*'
    policyName: 'policy-naming-convention-nsg'
    assignmentName: 'assignment-naming-convention-nsg'
    type: 'Microsoft.Network/networkSecurityGroups'
  }
}
