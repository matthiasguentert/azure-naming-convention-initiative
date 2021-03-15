# Title 

## Templates

|Resource Type|Default Pattern|Tested|Deploy|
|--|--|--|--|
|Management Group|mg-*|no|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Farm-templates%2FGeneral%2Fnaming-convention-mg.json)|
|Resource Group|rg-*|yes|[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthiasguentert%2Fazure-naming-convention-initiative%2Fmg_arm_templates%2Farm-templates%2FGeneral%2Fnaming-convention-rg.json)|

## Known limitations 

- Bicep currenlty only supports a [single scope](https://github.com/Azure/bicep/blob/main/docs/spec/resource-scopes.md)

## Roadmap 

- Create standalone ARM templates to create standalone policies and assignements
- Create initiative ARM template that contains all policies 