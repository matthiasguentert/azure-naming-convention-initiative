targetScope = 'subscription'

module cdne '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-cdne'
  params: {
    pattern: 'cdne-*'
    policyName: 'policy-naming-convention-cdne'
    assignmentName: 'assignment-naming-convention-cdne'
    type: 'microsoft.cdn/profiles/endpoints'
  }
}
