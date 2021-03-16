targetScope = 'subscription'

module evgd '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-evgd'
  params: {
    pattern: 'evgd-*'
    policyName: 'policy-naming-convention-evgd'
    assignmentName: 'assignment-naming-convention-evgd'
    type: 'Microsoft.EventGrid/domains'
  }
}
