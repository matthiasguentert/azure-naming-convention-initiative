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

    # General 

    policy_definition_reference {
      policy_definition_id = module.management-group-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.resource-group-policy.id
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

    # Networking 

    policy_definition_reference {
      policy_definition_id = module.virtual-network-policy.id
    }    

    policy_definition_reference {
      policy_definition_id = module.subnet-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.virtual-network-peering-policy.id
    }    

    policy_definition_reference {
      policy_definition_id = module.network-interface-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.public-ip-address-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.network-security-group-policy.id
    }   

    policy_definition_reference {
      policy_definition_id = module.application-security-group-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.local-network-gateway-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.virtual-network-gateway-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.vpn-connection-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.express-route-circuit-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.application-gateway-policy.id
    }    

    policy_definition_reference {
      policy_definition_id = module.route-table-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.user-defined-route-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.traffic-manager-profile-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.front-door-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.cdn-profile-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.cdn-endpoint-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.waf-policy.id
    }

    # Compute and Web

    policy_definition_reference {
      policy_definition_id = module.virtual-machine-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.virtual-machine-scale-set-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.availability-set-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.app-service-plan-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.web-app-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.notification-hub-policy.id
    }    

    policy_definition_reference {
      policy_definition_id = module.notification-hub-namespace-policy.id
    }

    # Databases

    policy_definition_reference {
      policy_definition_id = module.postgres-single-server-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.mysql-single-server-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.sql-db-server-policy.id
    }    

    policy_definition_reference {
      policy_definition_id = module.cosmos-db-policy.id
    }

    # Storage

    policy_definition_reference {
      policy_definition_id = module.storage-account-policy.id 
    }

    policy_definition_reference {
      policy_definition_id = module.container-registry-policy.id
    }

    # AI and Machine Learning

    # Analytics and IoT

    # Developer tools

    # Integration 

    # Management and Governance 

    policy_definition_reference {
      policy_definition_id = module.key-vault-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.log-analytics-policy.id
    }

    policy_definition_reference {
      policy_definition_id = module.app-insights-policy.id
    }    

    # Migration 
}

# General

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

# Networking 

module "virtual-network-policy" {
    source = "./policy-module"

    pattern = "vnet-*"
    type = "Microsoft.Network/virtualNetworks"
    display_name = "Virtual Networks"
}

module "subnet-policy" {
    source = "./policy-module"

    pattern = "snet-*"
    type = "Microsoft.Network/virtualNetworks/subnets"
    display_name = "Subnets"
}

module "virtual-network-peering-policy" {
    source = "./policy-module"

    pattern = "peer-*"
    type = "Microsoft.Network/virtualNetworks/virtualNetworkPeerings"
    display_name = "Virtual Network Peerings"
}

module "network-interface-policy" {
    source = "./policy-module"

    pattern = "nic-*"
    type = "Microsoft.Network/networkInterfaces"
    display_name = "Network Interfaces"
}

module "public-ip-address-policy" {
    source = "./policy-module"

    pattern = "pip-*"
    type = "Microsoft.Network/publicIPAddresses"
    display_name = "Public IP Addresses"
}

# TODO: Create custom module > lb is internal if pip is missing
# resources.properties.frontendIPConfigurations.properites.publicIPAddress does not exist
# module "load-balancer-internal-policy" {
#     source = "./policy-module"

#     pattern = "lbi-*"
#     type = "Microsoft.Network/loadBalancers"
#     display_name = "Internal Load Balancers"
# }

# TODO: Create custom module > lb is external if pip is attached
# resources.properties.frontendIPConfigurations.properites.publicIPAddress not null
# module "load-balancer-external-policy" {
#     source = "./policy-module"

#     pattern = "lbe-*"
#     type = "Microsoft.Network/loadBalancers"
#     display_name = "External Load Balancers"    
# }

module "network-security-group-policy" {
    source = "./policy-module"

    pattern = "nsg-*"
    type = "Microsoft.Network/networkSecurityGroups"
    display_name = "Network Security Groups"       
}

module "application-security-group-policy" {
    source = "./policy-module"

    pattern = "asg-*"
    type = "Microsoft.Network/applicationSecurityGroups"
    display_name = "Application Security Groups"  
}

module "local-network-gateway-policy" {
    source = "./policy-module"

    pattern = "lgw-*"
    type = "Microsoft.Network/localNetworkGateways"
    display_name = "Local Network Gateways"  
}

module "virtual-network-gateway-policy" {
    source = "./policy-module"

    pattern = "vgw-*"
    type = "Microsoft.Network/virtualNetworkGateways"
    display_name = "Virtual Network Gateways"  
}

module "vpn-connection-policy" {
    source = "./policy-module"

    pattern = "cn-*"
    type = "Microsoft.Network/vpnGateways/vpnConnections"
    display_name = "VPN Connections"  
}

module "express-route-circuit-policy" {
    source = "./policy-module"

    pattern = "erc-*"
    type = "Microsoft.Network/expressRouteCircuits"
    display_name = "Express Route Circuits"  
}

module "application-gateway-policy" {
    source = "./policy-module"

    pattern = "agw-*"
    type = "Microsoft.Network/applicationGateways"
    display_name = "Application Gateways"  
}

module "route-table-policy" {
    source = "./policy-module"

    pattern = "route-*"
    type = "Microsoft.Network/routeTables"
    display_name = "Route Tables"  
}

module "user-defined-route-policy" {
    source = "./policy-module"

    pattern = "udr-*"
    type = "Microsoft.Network/routeTables/routes"
    display_name = "User Defined Routes"  
}

module "traffic-manager-profile-policy" {
    source = "./policy-module"

    pattern = "traf-*"
    type = "Microsoft.Network/trafficmanagerprofiles"
    display_name = "Traffic Manager Profiles"  
}

module "front-door-policy" {
    source = "./policy-module"

    pattern = "fd-*"
    type = "icrosoft.Network/frontDoors"
    display_name = "Front Doors"  
}

# Todo: Move together into custom module cdn-endpoint-policy
module "cdn-profile-policy" {
    source = "./policy-module"

    pattern = "cdnp-*"
    type = "Microsoft.Cdn/profiles"
    display_name = "CDN Profiles"  
}

# Todo: Move together into custom module cdn-profile-policy
module "cdn-endpoint-policy" {
    source = "./policy-module"

    pattern = "cdne-*"
    type = "microsoft.cdn/profiles/endpoints"
    display_name = "CDN Endpoints"  
}

module "waf-policy" {
    source = "./policy-module"

    pattern = "waf*"
    type = "Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies"
    display_name = "Web Application Firewalls"  
}

# Compute and Web 

module "virtual-machine-policy" {
    source = "./policy-module"

    pattern = "vm*"
    type = "Microsoft.Compute/virtualMachines"
    display_name = "Virtual Machines"  
}

module "virtual-machine-scale-set-policy" {
    source = "./policy-module"

    pattern = "vmss-*"
    type = "Microsoft.Compute/virtualMachineScaleSets"
    display_name = "Virtual Machine Scale Sets"  
}

module "availability-set-policy" {
    source = "./policy-module"

    pattern = "avail-*"
    type = "Microsoft.Compute/availabilitySets"
    display_name = "Availability Sets"  
}

module "app-service-plan-policy" {
    source = "./policy-module"

    pattern = "plan-*"
    type = "Microsoft.Web/serverfarms"
    display_name = "App Service Plans"  
}

module "web-app-policy" {
    source = "./policy-module"

    pattern = "app-*"
    type = "Microsoft.Web/sites"
    display_name = "Web apps"  
}

# TODO: Create custom module and test for kind=functionapp
# module "function-app-policy" {
#     source = "./policy-module"

#     pattern = "func-*"
#     type = "Microsoft.Web/sites"
#     display_name = "xxx"  
# }

module "notification-hub-policy" {
    source = "./policy-module"

    pattern = "ntf-*"
    type = "Microsoft.NotificationHubs/namespaces/notificationHubs"
    display_name = "Notification Hubs"  
}

module "notification-hub-namespace-policy" {
    source = "./policy-module"

    pattern = "ntfns-*"
    type = "Microsoft.NotificationHubs/namespaces"
    display_name = "Notification Hubs namespaces"  
}

# Databases

module "postgres-single-server-policy" {
    source = "./policy-module"

    pattern = "psql-*"
    type = "Microsoft.DBforPostgreSQL/servers"
    display_name = "PostgreSQL Single Servers"  
}

module "mysql-single-server-policy" {
    source = "./policy-module"

    pattern = "mysql-*"
    type = "Microsoft.DBforMySQL/servers"
    display_name = "MySQL Single Servers"  
}

module "sql-db-server-policy" {
    source = "./policy-module"

    pattern = "sql-*"
    type = "Microsoft.Sql/servers"
    display_name = "Azure SQL Database Servers"  
}

module "cosmos-db-policy" {
    source = "./policy-module"

    pattern = "cosmos-*"
    type = "Microsoft.DocumentDB/databaseAccounts"
    display_name = "Azure Cosmos DB Accounts"  
}

# Storage

module "storage-account-policy" {
    source = "./policy-module"

    pattern = "st*"
    type = "Microsoft.Storage/storageAccounts"
    display_name = "Storage Accounts"
}

module "container-registry-policy" {
    source = "./policy-module"

    pattern = "acr*"
    type = "Microsoft.ContainerRegistry/registries"
    display_name = "Azure Container Registries"  
}

# AI and Machine Learning 

# Analytics and IoT 

# Developer tools

# Integration 

# Management and governance 

module "key-vault-policy" {
    source = "./policy-module"

    pattern = "kv-*"
    type = "Microsoft.KeyVault/vaults"
    display_name = "Key Vaults"  
}

module "log-analytics-policy" {
    source = "./policy-module"

    pattern = "log-*"
    type = "Microsoft.OperationalInsights/workspaces"
    display_name = "Log Analytic Workspaces"  
}

module "app-insights-policy" {
    source = "./policy-module"

    pattern = "appi-*"
    type = "Microsoft.Insights/components"
    display_name = "App Insights"  
}

# Migration 