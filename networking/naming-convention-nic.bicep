targetScope = 'subscription'

module nic '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-nic'
  params: {
    pattern: 'nic-*'
    policyName: 'policy-naming-convention-nic'
    assignmentName: 'assignment-naming-convention-nic'
    type: 'Microsoft.Network/networkInterfaces'
  }
}