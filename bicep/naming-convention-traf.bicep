targetScope = 'subscription'

module traf '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-traf'
  params: {
    pattern: 'traf-*'
    policyName: 'policy-naming-convention-traf'
    assignmentName: 'assignment-naming-convention-traf'
    type: 'Microsoft.Network/trafficmanagerprofiles'
  }
}
