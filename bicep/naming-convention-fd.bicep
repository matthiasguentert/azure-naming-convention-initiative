targetScope = 'subscription'

module fd '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-fd'
  params: {
    pattern: 'fd-*'
    policyName: 'policy-naming-convention-fd'
    assignmentName: 'assignment-naming-convention-fd'
    type: 'Microsoft.Network/frontDoors'
  }
}
