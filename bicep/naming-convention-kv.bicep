targetScope = 'subscription'

module kv '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-kv'
  params: {
    pattern: 'kv-*'
    policyName: 'policy-naming-convention-kv'
    assignmentName: 'assignment-naming-convention-kv'
    type: 'Microsoft.KeyVault/vaults'
  }
}
