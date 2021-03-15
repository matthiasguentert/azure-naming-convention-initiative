targetScope = 'subscription'

module pip '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-pip'
  params: {
    pattern: 'pip-*'
    policyName: 'policy-naming-convention-pip'
    assignmentName: 'assignment-naming-convention-pip'
    type: 'Microsoft.Network/publicIPAddresses'
  }
}