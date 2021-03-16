targetScope = 'subscription'

module waf '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-waf'
  params: {
    pattern: 'waf-*'
    policyName: 'policy-naming-convention-waf'
    assignmentName: 'assignment-naming-convention-waf'
    type: 'Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies'
  }
}
