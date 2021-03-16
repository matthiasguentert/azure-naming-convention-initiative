targetScope = 'subscription'

module psql '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-psql'
  params: {
    pattern: 'psql-*'
    policyName: 'policy-naming-convention-psql'
    assignmentName: 'assignment-naming-convention-psql'
    type: 'Microsoft.DBforPostgreSQL/servers'
  }
}
