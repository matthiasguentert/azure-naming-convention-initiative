targetScope = 'subscription'

module appi '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-appi'
  params: {
    pattern: 'appi-*'
    policyName: 'policy-naming-convention-appi'
    assignmentName: 'assignment-naming-convention-appi'
    type: 'Microsoft.Insights/components'
  }
}
