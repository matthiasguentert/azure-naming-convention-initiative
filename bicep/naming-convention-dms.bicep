targetScope = 'subscription'

module dms '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-dms'
  params: {
    pattern: 'dms-*'
    policyName: 'policy-naming-convention-dms'
    assignmentName: 'assignment-naming-convention-dms'
    type: 'Microsoft.DataMigration/services'
  }
}
