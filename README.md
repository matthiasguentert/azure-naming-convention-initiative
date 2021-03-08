# Azure Naming Convention Initiative

This repository holds a bunch of Terraform modules that creates an initiatve holding Azure polices to audit or enfore a specific naming convention. However it doesn't assign anything. 

The preset follows Microsoft naming convention which was proposed [here](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations)

However you can modify them according to your needs. The underyling module uses a `notLike` condition so you can check for pre- and postfixes, e.g. `app-*` would match `app-some-web-application` whereas `*-app` would match `some-web-application-app`. 

# How to use 

1. Download terraform binary from [here](https://www.terraform.io/downloads.html)
2. Clone this repository 
3. Ensure you are logged into your tenant by using `az login`
3. `terraform init`
4. `terraform plan`
5. `terraform apply`
6. Assign initiative according to your needs 

# Important notes

- After assigning an initiative it takes up to 30min until it becomes active!

# Current limitations

- Currently grouping of policies within the initiative is not possible due to a terraform [bug](https://github.com/terraform-providers/terraform-provider-azurerm/issues/10155)

# Further reading 

- [Azure Policy as Code workflow](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/policy-as-code)
- [azurerm_policy_definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition)
- [azurerm_policy_set_definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition#policy_definition_group)
- [Resource providers for Azure services](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/azure-services-resource-providers)