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
    name = "Naming Convention"
    policy_type = "Custom"
    display_name = "Naming Convention"
    description = "Naming convention initiative following Microsoft's recommendation"

    policy_definition_reference {
      policy_definition_id = module.management-group-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.resource-group-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.storage-account-policy.id 
    }

    policy_definition_reference {
      policy_definition_id = module.policy-definition-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.api-management-service-policy.id
    }

        policy_definition_reference {
      policy_definition_id = module.managed-identity-policy.id
    }
}

### General

module "management-group-policy" {
    source = "./policy-module"

    pattern = "mg-*"
    type = "Microsoft.Management/managementGroups"
    display_name = "Management Groups"
}

module "resource-group-policy" {
    source = "./policy-module"

    pattern = "rg-*"
    type = "Microsoft.Resources/resourceGroups"
    display_name = "Resource Groups"
}

module "policy-definition-policy" {
    source = "./policy-module"

    pattern = "policy-*"
    type = "Microsoft.Authorization/policyDefinitions"
    display_name = "Policy Definitions"
}

module "api-management-service-policy" {
    source = "./policy-module"

    pattern = "apim-*"
    type = "Microsoft.ApiManagement/service"
    display_name = "API Management Service Instances"
}

module "managed-identity-policy" {
    source = "./policy-module"

    pattern = "mi-*"
    type = "Microsoft.ManagedIdentity/userAssignedIdentities"
    display_name = "Managed Identities"
}


### Storage

module "storage-account-policy" {
    source = "./policy-module"

    pattern = "st*"
    type = "Microsoft.Storage/storageAccounts"
    display_name = "Storage Accounts"
}