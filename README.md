# 👮‍♂️ Azure Naming Convention Initiative 🚨

This repository holds a bunch of Terraform modules that creates an initiatve holding Azure polices to audit or enfore a specific naming convention. However it doesn't assign anything. 

The preset follows Microsoft naming convention which was proposed [here](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations)

However you can modify them according to your needs. The underyling module uses a `notLike` condition so you can check for pre- and postfixes, e.g. `app-*` would match `app-some-web-application` whereas `*-app` would match `some-web-application-app`. 

## ☝ Important notes

- After assigning an initiative it takes up to 30min until it becomes active!
- You need to have the `Resource Policy Contributor` role assigned on the target subscription
- Currently grouping of policies within the initiative is not possible due to a terraform [bug](https://github.com/terraform-providers/terraform-provider-azurerm/issues/10155)

## Known limitations 

- Bicep currenlty only supports a [single scope](https://github.com/Azure/bicep/blob/main/docs/spec/resource-scopes.md)

## 🚀 Currently implemented resources

### General 

|Asset type | Abbreviation | Tested | Deploy 
|--|--|--|--|
| Management group | `mg-` |✅|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-mg.json)|
| Resource group | `rg-` |✅|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-rg.json)|
| Policy definition | `policy-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-policy.json)|
| API management service instance | `apim-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-apim.json)|
| Managed Identity | `id-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-id.json)|

### Networking 

|Asset type | Abbreviation | Tested | Deploy 
|--|--|--|--|
| Virtual network | `vnet-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-vnet.json)|
| Subnet | `snet-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-snet.json)|
| Virtual network peering | `peer-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-peer.json)|
| Network interface (NIC) | `nic-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-nic.json)|
| Public IP address | `pip-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-pip.json)|
| Load balancer (internal) | `lbi-` |🔴|not yet implemented|
| Load balancer (external) | `lbe-` |🔴|not yet implemented|
| Network security group (NSG) | `nsg-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-nsg.json)|
| Application security group (ASG) | `asg-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-asg.json)|
| Local network gateway | `lgw-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-lgw.json)|
| Virtual network gateway | `vgw-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-lgw.json)|
| VPN connection | `cn-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-cn.json)|
| ExpressRoute circuit | `erc-` |⚠|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-erc.json)|
| Application gateway | `agw-` |✅||
| Route table | `route-` |✅||
| User defined route (UDR) | `udr-` |✅||
| Traffic Manager profile | `traf-` |✅||
| Front door | `fd-` |✅||
| CDN profile | `cdnp-` |✅||
| CDN endpoint | `cdne-` |✅||
| Web Application Firewall (WAF) policy | `waf` |✅||

### Compute and Web 

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
| Container registry | `cr` |🟨|not implemented yet|
| Container instance | `ci-` |🟨|not implemented yet|
| AKS cluster | `aks-` |🟨|not implemented yet|
| Service Fabric cluster | `sf-` |🟨|not implemented yet|
| App Service environment | `ase-` |🟨|not implemented yet|
| App Service plan | `plan-` |✅||
| Web app | `app-` |✅||
| Static web app | `stapp` |🟨|not implemented yet|
| Function app | `func-` |🟨|not implemented yet|
| Cloud service | `cld-` |🟨|wont implement|
| Notification Hubs | `ntf-` |✅||
| Notification Hubs namespace | `ntfns-` |✅||

### Databases 

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure SQL Database server | `sql-` |✅||
| Azure SQL database | `sqldb-` |🟨|not implemented yet|
| Azure Cosmos DB database | `cosmos-` |✅||
| Azure Cache for Redis instance | `redis-` |🟨|not implemented yet|
| MySQL database | `mysql-` |✅|Checks single server name|
| PostgreSQL database | `psql-` |✅|Checks single server name|
| Azure SQL Data Warehouse | `sqldw-` |🟨|not implemented yet|
| Azure Synapse Analytics | `syn-` |🟨|not implemented yet|
| SQL Server Stretch Database | `sqlstrdb-` |🟨|not implemented yet|
| SQL Managed Instance | `sqlmi-` |🟨|not implemented yet|

### Storage 

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Storage account | `st` |✅||
| Azure StorSimple | `ssimp` |🟨|not implemented yet|
| Azure Container Registry | `acr` |✅||

### AI and Machine Learning

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure Cognitive Search | `srch-` |🟨|not implemented yet|
| Azure Cognitive Services | `cog-` |🟨|not implemented yet|
| Azure Machine Learning workspace | `mlw-` |🟨|not implemented yet|

### Analytics and IoT

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure Analysis Services server | `as` |🟨|not implemented yet|
| Azure Databricks workspace | `dbw-` |🟨|not implemented yet|
| Azure Stream Analytics | `asa-` |🟨|not implemented yet|
| Azure Data Explorer cluster | `dec` |🟨|not implemented yet|
| Azure Data Factory | `adf-` |🟨|not implemented yet|
| Data Lake Store account | `dls` |🟨|not implemented yet|
| Data Lake Analytics account | `dla` |🟨|not implemented yet|
| Event Hubs namespace | `evhns-` |🟨|not implemented yet|
| Event hub | `evh-` |🟨|not implemented yet|
| Event Grid domain | `evgd-` |🟨|not implemented yet|
| Event Grid topic | `evgt-` |🟨|not implemented yet|
| HDInsight - Hadoop cluster | `hadoop-` |🟨|not implemented yet|
| HDInsight - HBase cluster | `hbase-` |🟨|not implemented yet|
| HDInsight - Kafka cluster | `kafka-` |🟨|not implemented yet|
| HDInsight - Spark cluster | `spark-` |🟨|not implemented yet|
| HDInsight - Storm cluster | `storm-` |🟨|not implemented yet|
| HDInsight - ML Services cluster | `mls-` |🟨|not implemented yet|
| IoT hub | `iot-` |🟨|not implemented yet|
| Power BI Embedded | `pbi-` |🟨|not implemented yet|
| Time Series Insights environment | `tsi-` |🟨|not implemented yet|

### Developer tools

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| App Configuration store | `appcs-` |🟨|not implemented yet|
| Azure Static Web Apps | `stap-` |🟨|not implemented yet|

### Integration

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Integration account | `ia-` |🟨|not implemented yet|
| Logic apps | `logic-` |🟨|not implemented yet|
| Service Bus | `sb-` |🟨|not implemented yet|
| Service Bus queue | `sbq-` |🟨|not implemented yet|
| Service Bus topic | `sbt-` |🟨|not implemented yet|

### Management and governance

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Automation account | `aa-` |🟨|not implemented yet|
| Azure Monitor action group | `ag-` |🟨|not implemented yet|
| Azure Purview instance | `pview-` |🟨|not implemented yet|
| Blueprint | `bp-` |🟨|not implemented yet|
| Blueprint assignment | `bpa-` |🟨|not implemented yet|
| Key vault | `kv-` |✅||
| Log Analytics workspace | `log-` |✅||
| Application Insights | `appi-` |✅||

### Migration

Asset type | Abbreviation | Status | Comment 
|--|--|--|--|
| Azure Migrate project | `migr-` |🟨|not implemented yet|
| Database Migration Service instance | `dms-` |🟨|not implemented yet|
| Recovery Services vault | `rsv-` |🟨|not implemented yet|

## 🤓 Further reading 

- [Azure Policy as Code workflow](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/policy-as-code)
- [azurerm_policy_definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition)
- [azurerm_policy_set_definition](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition#policy_definition_group)
- [Resource providers for Azure services](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/azure-services-resource-providers)
- [Azure Templates](https://docs.microsoft.com/en-us/azure/templates/)