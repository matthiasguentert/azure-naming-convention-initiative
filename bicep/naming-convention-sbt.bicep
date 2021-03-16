targetScope = 'subscription'

module sbt '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-sbt'
  params: {
    pattern: 'sbt-*'
    policyName: 'policy-naming-convention-sbt'
    assignmentName: 'assignment-naming-convention-sbt'
    type: 'Microsoft.ServiceBus/namespaces/topics'
  }
}
