targetScope = 'subscription'

module sbq '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-sbq'
  params: {
    pattern: 'sbq-*'
    policyName: 'policy-naming-convention-sbq'
    assignmentName: 'assignment-naming-convention-sbq'
    type: 'Microsoft.ServiceBus/namespaces/queues'
  }
}
