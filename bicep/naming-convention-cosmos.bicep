targetScope = 'subscription'

module cosmos '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-cosmos'
  params: {
    pattern: 'cosmos-*'
    policyName: 'policy-naming-convention-cosmos'
    assignmentName: 'assignment-naming-convention-cosmos'
    type: 'Microsoft.DocumentDB/databaseAccounts'
  }
}
