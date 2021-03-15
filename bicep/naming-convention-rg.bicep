targetScope = 'subscription'
param pattern string = 'rg-*'

@allowed([
  'Deny'
  'Audit'
  'Disabled'
])
@description('The effect determines what happens when the policy rule is evaluated to match')
param effect string = 'Deny'

@allowed([
  'Default'
  'DoNotEnforce'
])
@description('When enforcement mode is disabled, the policy effect isn\'t enforced (i.e. deny policy won\'t deny resources). Compliance assessment results are still available.')
param enforcementMode string = 'Default'

resource policyNamingConventionRg 'Microsoft.Authorization/policyDefinitions@2020-03-01' = {
  name: 'policy-naming-convention-rg'
  properties: {
    policyType: 'Custom'
    mode: 'All'
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Resources/subscriptions/resourceGroups'
          }
          {
            field: 'name'
            notLike: pattern
          }
        ]
      }
      then: {
        effect: effect
      }
    }
  }
}

resource assignmentNamingConventionRg 'Microsoft.Authorization/policyAssignments@2020-03-01' = {
  name: 'assignment-naming-convention-rg'
  properties: {
    policyDefinitionId: policyNamingConventionRg.id
    enforcementMode: enforcementMode
  }
}