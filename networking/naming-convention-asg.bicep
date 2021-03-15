targetScope = 'subscription'

module asg '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-asg'
  params: {
    pattern: 'asg-*'
    policyName: 'policy-naming-convention-asg'
    assignmentName: 'assignment-naming-convention-asg'
    type: 'Microsoft.Network/applicationSecurityGroups'
  }
}