targetScope = 'subscription'

var policyName = 'policy-naming-convention-log'
var assignmentName = 'assignment-naming-convention-log'
var type = 'Microsoft.OperationalInsights/workspaces'

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

resource logPolicy 'Microsoft.Authorization/policyDefinitions@2020-03-01' = {
  name: policyName
  properties: {
    policyType: 'Custom'
    mode: 'All'
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'
            equals: type
          }
          {
            allOf:[
              {
                field: 'name'
                notLike: 'log-*'
              }
              {
                field: 'name'
                notLike: 'DefaultWorkspace-*' // Required by function app with app insights turned on
              }
            ]
          }
        ]
      }
      then: {
        effect: effect
      }
    }
  }
}

resource logAssignment 'Microsoft.Authorization/policyAssignments@2020-03-01' = {
  name: assignmentName
  properties: {
    policyDefinitionId: logPolicy.id
    enforcementMode: enforcementMode
  }
}
