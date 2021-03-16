targetScope = 'subscription'

module ntfns '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-ntfns'
  params: {
    pattern: 'ntfs-*'
    policyName: 'policy-naming-convention-ntfns'
    assignmentName: 'assignment-naming-convention-ntfns'
    type: 'Microsoft.NotificationHubs/namespaces'
  }
}
