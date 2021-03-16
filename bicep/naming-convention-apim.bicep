targetScope = 'subscription'

module apim '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-apim'
  params: {
    pattern: 'apim-*'
    policyName: 'policy-naming-convention-apim'
    assignmentName: 'assignment-naming-convention-apim'
    type: 'Microsoft.ApiManagement/service'
  }
}
