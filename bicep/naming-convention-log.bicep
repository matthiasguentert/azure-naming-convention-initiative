targetScope = 'subscription'

module log '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-log'
  params: {
    pattern: 'log-*'
    policyName: 'policy-naming-convention-log'
    assignmentName: 'assignment-naming-convention-log'
    type: 'Microsoft.OperationalInsights/workspaces'
  }
}
