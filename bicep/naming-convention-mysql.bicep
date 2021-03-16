targetScope = 'subscription'

module mysql '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-mysql'
  params: {
    pattern: 'mysql-*'
    policyName: 'policy-naming-convention-mysql'
    assignmentName: 'assignment-naming-convention-mysql'
    type: 'Microsoft.DBforMySQL/servers'
  }
}
