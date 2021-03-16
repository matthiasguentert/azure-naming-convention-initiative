targetScope = 'subscription'

module ntf '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-ntf'
  params: {
    pattern: 'ntf-*'
    policyName: 'policy-naming-convention-ntf'
    assignmentName: 'assignment-naming-convention-ntf'
    type: 'Microsoft.NotificationHubs/namespaces/notificationHubs'
  }
}
