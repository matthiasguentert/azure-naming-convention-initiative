targetScope = 'subscription'

module rsv '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-rsv'
  params: {
    pattern: 'rsv-*'
    policyName: 'policy-naming-convention-rsv'
    assignmentName: 'assignment-naming-convention-rsv'
    type: 'Microsoft.RecoveryServices/vaults'
  }
}
