# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition
resource "azurerm_policy_set_definition" "initiative" {
    name = "Naming Convention Initiative"
    policy_type = "Custom"
    display_name = "Naming Convention Initiative"
    description = "Some description"

    policy_definition_reference {
        policy_definition_id = module.storage-account-policy.id 
        # group_names = ["storage"] https://github.com/terraform-providers/terraform-provider-azurerm/issues/10155
    }

    policy_definition_reference {
        policy_definition_id = module.resource-group-policy.id
    }

    # Can't currently be referenced as of tf bug
    # policy_definition_group {
    #     name = "storage"
    #     display_name = "Storage"
    # }
}

module "storage-account-policy" {
    source = "./policy-module"

    pattern = "st*"
    type = "Microsoft.Storage/storageAccounts"
    name = "NamingConventionForStorageAccounts"
    display_name = "Naming Convention for Storage Accounts"
    description = "Naming Convention for Storage Accounts following Microsoft's recommendation" 
}

module "resource-group-policy" {
    source = "./policy-module"

    pattern = "rg-*"
    type = "Microsoft.Resources/resourceGroups"
    name = "NamingConventionForResourceGroups"
    display_name = "Naming Convention for Resource Groups"
    description = "Naming Convention for Resource Groups following Microsoft's recommendation"
}

module "management-group-policy" {
    source = "./policy-module"

    pattern = "mg-*"
    type = "Microsoft.Management/managementGroups"
    name = "NamingConventionForManagementGroups"
    display_name = "Naming Convention for Management Groups"
    description = "Naming Convention for Management Groups following Microsoft's recommendation"
}