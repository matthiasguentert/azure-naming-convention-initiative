targetScope = 'subscription'

module logic '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-logic'
  params: {
    pattern: 'logic-*'
    policyName: 'policy-naming-convention-logic'
    assignmentName: 'assignment-naming-convention-logic'
    type: 'Microsoft.Logic/workflows'
  }
}
