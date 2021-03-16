targetScope = 'subscription'

module route '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-route'
  params: {
    pattern: 'route-*'
    policyName: 'policy-naming-convention-route'
    assignmentName: 'assignment-naming-convention-route'
    type: 'Microsoft.Network/routeTables'
  }
}
