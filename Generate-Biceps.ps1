$ps = @(
    ### General
    @('mg','mg-*','Microsoft.Management/managementGroups'),
    @('rg','rg-*','Microsoft.Resources/resourceGroups'),
    @('policy','policy-*','Microsoft.Authorization/policyDefinitions'),
    @('apim','apim-*','Microsoft.ApiManagement/service'),
    @('id','id-*','Microsoft.ManagedIdentity/userAssignedIdentities'),

    ### Networking
    @('vnet','vnet-*','Microsoft.Network/virtualNetworks'),
    @('snet','snet-*','Microsoft.Network/virtualNetworks/subnets'),
    @('peer','peer-*','Microsoft.Network/virtualNetworks/virtualNetworkPeerings'),
    @('nic','nic-*','Microsoft.Network/networkInterfaces'),
    @('pip','pip-*','Microsoft.Network/publicIPAddresses'),
    #@('lbi','lbi-*','Microsoft.Network/loadBalancers'),
    #@('lbe','lbe-*','Microsoft.Network/loadBalancers'),
    @('nsg','nsg-*','Microsoft.Network/networkSecurityGroups'),
    @('asg','asg-*','Microsoft.Network/applicationSecurityGroups'),
    @('lgw','lgw-*','Microsoft.Network/localNetworkGateways'),
    @('vgw','vgw-*','Microsoft.Network/virtualNetworkGateways'),
    @('cn','cn-*','Microsoft.Network/vpnGateways/vpnConnections'),
    @('erc','erc-*','Microsoft.Network/expressRouteCircuits'),
    @('agw', 'agw-*', 'Microsoft.Network/applicationGateways'),
    @('route', 'route-*', 'Microsoft.Network/routeTables'),
    @('udr','udr-*','Microsoft.Network/routeTables/routes'),
    @('traf','traf-*','Microsoft.Network/trafficmanagerprofiles'),
    @('fd','fd-*','Microsoft.Network/frontDoors'),
    @('cdnp','cdnp-*','Microsoft.Cdn/profiles'),
    @('cdne','cdne-*','microsoft.cdn/profiles/endpoints'),
    @('waf','waf-*','Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies'),

    ### Compute and Web
    @('vm','vm','Microsoft.Compute/virtualMachines'),
    @('vmss','vmss-*','Microsoft.Compute/virtualMachineScaleSets'),
    @('avail','avail-*','Microsoft.Compute/availabilitySets'),
    #@('osdisk','osdisk-*',''),
    #@('disk','disk-*',''),
    #@('stvm','stvm-*',''),
    #@('arcs','arcs-*',''),
    #@('arck','arck',''),
    #@('cr','cr',''),
    #@('ci','ci-*',''),
    @('aks','aks-*','Microsoft.ContainerService/managedClusters'),
    #@('sf','sf-*',''),
    #@('ase','ase-*',''),
    @('plan','plan-*','Microsoft.Web/serverfarms'),
    @('app','app-*','Microsoft.Web/sites'),
    #@('stapp','stapp',''),
    #@('func','func-*','Microsoft.Web/sites'), kind: "functionapp"
    #@('cld','cld-*',''),
    @('ntf','ntf-*','Microsoft.NotificationHubs/namespaces/notificationHubs'),
    @('ntfns','ntfs-*','Microsoft.NotificationHubs/namespaces'),

    ### Databases 
    @('sql','sql-*','Microsoft.Sql/servers'),
    @('sqldb','sqldb-*','Microsoft.Sql/servers/databases'),
    @('cosmos','cosmos-*','Microsoft.DocumentDB/databaseAccounts'),
    @('redis','redis-*','Microsoft.Cache/Redis'),
    @('mysql','mysql-*','Microsoft.DBforMySQL/servers'),
    @('psql','psql-*','Microsoft.DBforPostgreSQL/servers'),
    #@('sqldw','sqldw-*',''),
    #@('syn','syn-*',''),
    #@('sqlstrdb','sqlstrdb-*',''),
    @('sqlmi','sqlmi-*','Microsoft.Sql/managedInstances'),

    ### Storage
    @('st','st*','Microsoft.Storage/storageAccounts'),
    #@('ssimp','ssimp*',''),
    @('acr','acr*','Microsoft.ContainerRegistry/registries'),

    ### AI and Machine Learning
    #@('srch','srch-*',''),
    #@('cog','cog-*',''),
    #@('mlw','mlw-*',''),

    ### Analytics and IoT
    #@('as','as*',''),
    #@('dbw','dbw-*',''),
    #@('asa','asa-*',''),
    #@('dec','dec*',''),
    #@('adf','adf-*',''),
    #@('dls','dls-*',''),
    #@('dla','dla*',''),
    @('evhns','evhns-*','Microsoft.EventHub/namespaces'),
    @('evh','evh-*','Microsoft.EventHub/namespaces/eventhubs'),
    @('evgd','evgd-*','Microsoft.EventGrid/domains'),
    @('evgt','evgt-*','Microsoft.EventGrid/topics'),
    #@('hadoop','hadoop-*',''),
    #@('hbase','hbase-*',''),
    #@('kafka','kafka-*',''),
    #@('spark','spark-*',''),
    #@('storm','storm-*',''),
    #@('mls','mls-*',''),
    #@('iot','iot-*',''),
    #@('pbi','pbi-*',''),
    #@('tsi','tsi-*',''),

    ### Developer tools
    @('appcs','appcs-*','Microsoft.AppConfiguration/configurationStores'),
    @('stap','stap-*','Microsoft.Web/staticSites'),

    ### Integration
    @('ia','ia-*','Microsoft.Logic/integrationAccounts'),
    @('logic','logic-*','Microsoft.Logic/workflows'),
    @('sb','sb-*','Microsoft.ServiceBus/namespaces'),
    @('sbq','sbq-*','Microsoft.ServiceBus/namespaces/queues'),
    @('sbt','sbt-*','Microsoft.ServiceBus/namespaces/topics'),

    ### Management and governance
    @('aa','aa-*','Microsoft.Automation/automationAccounts'),
    #@('ag','ag-*',''),
    #@('pview','pview-*',''),
    #@('bp','bp-*',''),
    #@('bpa','bpa-*',''),
    @('kv','kv-*','Microsoft.KeyVault/vaults'),
    @('log','log-*','Microsoft.OperationalInsights/workspaces'),
    @('appi','appi-*','Microsoft.Insights/components'),

    ### Migration
    #@('migr','migr-*',''),
    @('dms','dms-*','Microsoft.DataMigration/services'),
    @('rsv','rsv-*','Microsoft.RecoveryServices/vaults')
)

foreach ($p in $ps)
{
    $token = $p[0]
    Write-Host -ForegroundColor Green "# Scaffolding ${token}"
    $output = Join-Path -Path ".\bicep" -ChildPath "naming-convention-${token}.bicep"
    (Get-Content -path .\template\naming-convention-template.bicep) -replace "#1#",$p[0] -replace "#2#",$p[1] -replace "#3#",$p[2] | out-file -Path $output

    "[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Fdist%2Fnaming-convention-${token}.json)" | Out-File -Append -FilePath $(Join-Path -Path ".\dist" -ChildPath "links.txt")
}