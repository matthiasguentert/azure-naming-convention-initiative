terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

# https://registry.terraform.io/providers/providers/hashicorp/azurerm/latest/docs/resources/policy_definition
resource "azurerm_policy_definition" "policy" {
    name = var.name
    policy_type = "Custom"
    mode = "All"
    display_name = var.display_name
    description = var.description

    metadata = jsonencode({
        "version": "0.1.0",
        "category": "General",
        "preview": true, 
        "deprecated": false
    })

    policy_rule = jsonencode({
        "if": {
            "allOf": [
                {
                    "field": "type",
                    "equals": var.type
                },
                {
                    "field": "name",
                    "notLike": "[parameters('pattern')]"
                }
            ]
        },
        "then": {
            "effect": "[parameters('effect')]"
        }
    })
    
    parameters = jsonencode({
        "effect": {
            "type": "String",
            "metadata": {
                "displayName": "Effect",
                "description": "Enable or disable the execution of the policy"
            },
            "allowedValues": [
                "Audit",
                "Deny",
                "Disabled"
            ],
            "defaultValue": "Audit"
        },
        "pattern": {
            "type": "String",
            "metadata": {
                "displayName": "Pattern",
                "description": "String pattern to match against"
            },
            "defaultValue": var.pattern
        }
    })
}