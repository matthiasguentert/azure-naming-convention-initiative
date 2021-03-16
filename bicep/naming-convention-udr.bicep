targetScope = 'subscription'

module udr '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-udr'
  params: {
    pattern: 'udr-*'
    policyName: 'policy-naming-convention-udr'
    assignmentName: 'assignment-naming-convention-udr'
    type: 'Microsoft.Network/routeTables/routes'
  }
}
