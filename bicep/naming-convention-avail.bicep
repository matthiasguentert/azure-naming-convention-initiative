targetScope = 'subscription'

module avail '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-avail'
  params: {
    pattern: 'avail-*'
    policyName: 'policy-naming-convention-avail'
    assignmentName: 'assignment-naming-convention-avail'
    type: 'Microsoft.Compute/availabilitySets'
  }
}
