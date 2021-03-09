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
- Currently grouping of policies within the initiative is not possible due to a terraform [bug](https://github.com/terraform-providers/terraform-provider-azurerm/issues/10155)

# Currently implemented resources

## General 

|Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Management group | `mg-` |✅||
| Resource group | `rg-` |✅||
| Policy definition | `policy-` |✅||
| API management service instance | `apim-` |✅||
| Managed Identity | `id-` |✅||

## Networking 

|Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Virtual network | `vnet-` |✅||
| Subnet | `snet-` |✅||
| Virtual network peering | `peer-` |✅||
| Network interface (NIC) | `nic-` |✅||
| Public IP address | `pip-` |✅||
| Load balancer (internal) | `lbi-` |🟥|not working yet|
| Load balancer (external) | `lbe-` |🟥|not working yet|
| Network security group (NSG) | `nsg-` |✅||
| Application security group (ASG) | `asg-` |✅||
| Local network gateway | `lgw-` |✅||
| Virtual network gateway | `vgw-` |✅||
| VPN connection | `cn-` |✅||
| ExpressRoute circuit | `erc-` |✅||
| Application gateway | `agw-` |✅||
| Route table | `route-` |✅||
| User defined route (UDR) | `udr-` |✅||
| Traffic Manager profile | `traf-` |✅||
| Front door | `fd-` |✅||
| CDN profile | `cdnp-` |✅||
| CDN endpoint | `cdne-` |✅||
| Web Application Firewall (WAF) policy | `waf` |✅||

## Compute and Web 

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Virtual machine | `vm` |✅||
| Virtual machine scale set | `vmss-` |✅||
| Availability set | `avail-` |✅||
| Managed disk (OS) | `osdisk` |🟨|wont implement|
| Managed disk (data) | `disk` |🟨|wont implement|
| VM storage account | `stvm` |🟨|wont implement|
| Azure Arc enabled server | `arcs-` |🟨|wont implement|
| Azure Arc enabled Kubernetes cluster | `arck` |🟨|wont implement|
| Container registry | `cr` |✅||
| Container instance | `ci-` |
| AKS cluster | `aks-` |
| Service Fabric cluster | `sf-` |
| App Service environment | `ase-` |
| App Service plan | `plan-` |
| Web app | `app-` |
| Static web app | `stapp` |
| Function app | `func-` |
| Cloud service | `cld-` |🟨|wont implement|
| Notification Hubs | `ntf-` |
| Notification Hubs namespace | `ntfns-` |

## Databases 

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure SQL Database server | `sql-` |
| Azure SQL database | `sqldb-` |
| Azure Cosmos DB database | `cosmos-` |
| Azure Cache for Redis instance | `redis-` |
| MySQL database | `mysql-` |
| PostgreSQL database | `psql-` |
| Azure SQL Data Warehouse | `sqldw-` |
| Azure Synapse Analytics | `syn-` |
| SQL Server Stretch Database | `sqlstrdb-` |
| SQL Managed Instance | `sqlmi-` |

## Storage 

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Storage account | `st` |✅||
| Azure StorSimple | `ssimp` |
| Azure Container Registry | `acr` |

## AI and Machine Learning

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure Cognitive Search | `srch-` |
| Azure Cognitive Services | `cog-` |
| Azure Machine Learning workspace | `mlw-` |

## Analytics and IoT

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure Analysis Services server | `as` |
| Azure Databricks workspace | `dbw-` |
| Azure Stream Analytics | `asa-` |
| Azure Data Explorer cluster | `dec` |
| Azure Data Factory | `adf-` |
| Data Lake Store account | `dls` |
| Data Lake Analytics account | `dla` |
| Event Hubs namespace | `evhns-` |
| Event hub | `evh-` |
| Event Grid domain | `evgd-` |
| Event Grid topic | `evgt-` |
| HDInsight - Hadoop cluster | `hadoop-` |
| HDInsight - HBase cluster | `hbase-` |
| HDInsight - Kafka cluster | `kafka-` |
| HDInsight - Spark cluster | `spark-` |
| HDInsight - Storm cluster | `storm-` |
| HDInsight - ML Services cluster | `mls-` |
| IoT hub | `iot-` |
| Power BI Embedded | `pbi-` |
| Time Series Insights environment | `tsi-` |

## Developer tools

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| App Configuration store | `appcs-` |
| Azure Static Web Apps | `stap-` |

## Integration

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Integration account | `ia-` |
| Logic apps | `logic-` |
| Service Bus | `sb-` |
| Service Bus queue | `sbq-` |
| Service Bus topic | `sbt-` |

## Management and governance

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Automation account | `aa-` |
| Azure Monitor action group | `ag-` |
| Azure Purview instance | `pview-` |
| Blueprint | `bp-` |
| Blueprint assignment | `bpa-` |
| Key vault | `kv-` |
| Log Analytics workspace | `log-` |
| Application Insights | `appi-` |

## Migration

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure Migrate project | `migr-` |
| Database Migration Service instance | `dms-` |
| Recovery Services vault | `rsv-` |

# Ideas for the future

- Create a bicep version 
- Create a .NET version using Azure SDK 

# Further reading 

- [Azure Policy as Code workflow](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/policy-as-code)
- [azurerm_policy_definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition)
- [azurerm_policy_set_definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition#policy_definition_group)
- [Resource providers for Azure services](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/azure-services-resource-providers)
- [Azure Templates](https://docs.microsoft.com/en-us/azure/templates/)