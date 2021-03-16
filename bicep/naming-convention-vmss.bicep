targetScope = 'subscription'

module vmss '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-vmss'
  params: {
    pattern: 'vmss-*'
    policyName: 'policy-naming-convention-vmss'
    assignmentName: 'assignment-naming-convention-vmss'
    type: 'Microsoft.Compute/virtualMachineScaleSets'
  }
}
