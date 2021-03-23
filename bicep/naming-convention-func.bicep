targetScope = 'subscription'
param pattern string = 'func-*'
var version = '0.1.0'

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

resource funcPolicy 'Microsoft.Authorization/policyDefinitions@2020-03-01' = {
  name: 'policy-naming-convention-func'
  properties: {
    policyType: 'Custom'
    mode: 'All'
    metadata: {
      version: version
    }
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: 'Microsoft.Web/sites'
          }
          {
            field: 'kind'
            like: 'functionapp*'
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

resource funcAssignment 'Microsoft.Authorization/policyAssignments@2020-03-01' = {
  name: 'assignment-naming-convention-func'
  properties: {
    policyDefinitionId: funcPolicy.id
    enforcementMode: enforcementMode
  }
}
