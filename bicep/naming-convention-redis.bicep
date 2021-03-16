targetScope = 'subscription'

module redis '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-redis'
  params: {
    pattern: 'redis-*'
    policyName: 'policy-naming-convention-redis'
    assignmentName: 'assignment-naming-convention-redis'
    type: 'Microsoft.Cache/Redis'
  }
}
