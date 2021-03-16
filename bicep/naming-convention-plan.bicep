targetScope = 'subscription'

module plan '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-plan'
  params: {
    pattern: 'plan-*'
    policyName: 'policy-naming-convention-plan'
    assignmentName: 'assignment-naming-convention-plan'
    type: 'Microsoft.Web/serverfarms'
  }
}
