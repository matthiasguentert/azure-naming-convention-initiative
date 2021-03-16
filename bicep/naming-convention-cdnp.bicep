targetScope = 'subscription'

module cdnp '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-cdnp'
  params: {
    pattern: 'cdnp-*'
    policyName: 'policy-naming-convention-cdnp'
    assignmentName: 'assignment-naming-convention-cdnp'
    type: 'Microsoft.Cdn/profiles'
  }
}
