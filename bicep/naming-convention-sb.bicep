targetScope = 'subscription'

module sb '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-sb'
  params: {
    pattern: 'sb-*'
    policyName: 'policy-naming-convention-sb'
    assignmentName: 'assignment-naming-convention-sb'
    type: 'Microsoft.ServiceBus/namespaces'
  }
}
