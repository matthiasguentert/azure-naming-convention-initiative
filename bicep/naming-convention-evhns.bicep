targetScope = 'subscription'

module evhns '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-evhns'
  params: {
    pattern: 'evhns-*'
    policyName: 'policy-naming-convention-evhns'
    assignmentName: 'assignment-naming-convention-evhns'
    type: 'Microsoft.EventHub/namespaces'
  }
}
