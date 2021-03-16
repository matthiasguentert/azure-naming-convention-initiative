targetScope = 'subscription'

module #1# '../modules/naming-convention-generic.bicep' = {
  name: 'policy-naming-convention-#1#'
  params: {
    pattern: '#2#'
    policyName: 'policy-naming-convention-#1#'
    assignmentName: 'assignment-naming-convention-#1#'
    type: '#3#'
  }
}