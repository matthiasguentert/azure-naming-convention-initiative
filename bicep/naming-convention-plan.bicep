targetScope = 'subscription'

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

resource genericPolicy 'Microsoft.Authorization/policyDefinitions@2020-03-01' = {
  name: 'policy-naming-convention-plan'
  properties: {
    policyType: 'Custom'
    mode: 'All'
    policyRule: {
      if: {
        allOf: [
          {
            field: 'type'  
            equals: 'Microsoft.Web/serverfarms'
          }
          {
            allOf:[
              {
                field: 'name'
                notLike: 'plan-*'
              }
              {
                field: 'name'
                notLike: 'asp-*' // Function app with consumption plan
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

resource genericAssignment 'Microsoft.Authorization/policyAssignments@2020-03-01' = {
  name: 'assignment-naming-convention-plan'
  properties: {
    policyDefinitionId: genericPolicy.id
    enforcementMode: enforcementMode
  }
}
