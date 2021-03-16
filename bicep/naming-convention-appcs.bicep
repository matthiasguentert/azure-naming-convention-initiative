targetScope = 'subscription'

module appcs '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-appcs'
  params: {
    pattern: 'appcs-*'
    policyName: 'policy-naming-convention-appcs'
    assignmentName: 'assignment-naming-convention-appcs'
    type: 'Microsoft.AppConfiguration/configurationStores'
  }
}
