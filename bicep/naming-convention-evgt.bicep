targetScope = 'subscription'

module evgt '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-evgt'
  params: {
    pattern: 'evgt-*'
    policyName: 'policy-naming-convention-evgt'
    assignmentName: 'assignment-naming-convention-evgt'
    type: 'Microsoft.EventGrid/topics'
  }
}
