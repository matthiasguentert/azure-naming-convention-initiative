targetScope = 'subscription'

module rg '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-rg'
  params: {
    pattern: 'apim-*'
    policyName: 'policy-naming-convention-rg'
    assignmentName: 'assignment-naming-convention-rg'
    type: 'Microsoft.ApiManagement/service'
  }
}