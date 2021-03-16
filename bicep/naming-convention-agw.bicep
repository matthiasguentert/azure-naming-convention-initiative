targetScope = 'subscription'

module agw '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-agw'
  params: {
    pattern: 'agw-*'
    policyName: 'policy-naming-convention-agw'
    assignmentName: 'assignment-naming-convention-agw'
    type: 'Microsoft.Network/applicationGateways'
  }
}
