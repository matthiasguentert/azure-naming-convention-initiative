targetScope = 'subscription'

module aa '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-aa'
  params: {
    pattern: 'aa-*'
    policyName: 'policy-naming-convention-aa'
    assignmentName: 'assignment-naming-convention-aa'
    type: 'Microsoft.Automation/automationAccounts'
  }
}
