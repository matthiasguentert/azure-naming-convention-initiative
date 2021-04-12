targetScope = 'subscription'

module evh '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-evh'
  params: {
    pattern: 'evh-*'
    policyName: 'policy-naming-convention-evh'
    assignmentName: 'assignment-naming-convention-evh'
    type: 'Microsoft.EventHub/namespaces/eventhubs'
  }
}
