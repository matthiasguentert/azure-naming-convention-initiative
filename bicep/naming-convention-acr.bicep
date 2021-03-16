targetScope = 'subscription'

module acr '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-acr'
  params: {
    pattern: 'acr*'
    policyName: 'policy-naming-convention-acr'
    assignmentName: 'assignment-naming-convention-acr'
    type: 'Microsoft.ContainerRegistry/registries'
  }
}
