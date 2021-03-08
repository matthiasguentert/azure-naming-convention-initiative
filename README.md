# azure-naming-convention-initiative
This repository holds Azure policies to enforce Microsoft's naming convention for Azure resources

https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations

# Ideas

- Provide option so user can directly deploy to tenant
- Provide bunch of scripts
- Create initiative that contains all policies 

# Create new policy definition 

az policy definition create \
    --subscription "AZUREBLUE PROD" \
    --name "enforce-naming-storage-account" \
    --display-name "Enfore naming convention for storage accounts" \
    --rules .\Storage\StorageAccountRules.json \
    --params .\Storage\StorageAccountParameters.json \
    --mode all

# Create new initiative definition 

az policy set-definition create \
    --subscription "AZUREBLUE PROD" \
    --name "..." \
    --display-name "..." \
    --definitions ...definitions.json \
    --params ...parameters.json \
    --definition-groups ...definitiongroups.json 

# Further reading 

[Azure Policy as Code workflow](https://docs.microsoft.com/en-us/azure/governance/policy/concepts/policy-as-code)