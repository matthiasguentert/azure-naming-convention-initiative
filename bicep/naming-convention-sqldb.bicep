targetScope = 'subscription'

module sqldb '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-sqldb'
  params: {
    pattern: 'sqldb-*'
    policyName: 'policy-naming-convention-sqldb'
    assignmentName: 'assignment-naming-convention-sqldb'
    type: 'Microsoft.Sql/servers/databases'
  }
}
