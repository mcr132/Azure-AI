### Deployment of Azure ML workspace using Azure CLI

### Check Aure CLI extension
az extension list
extensionName='azure-cli-ml'
az extension add --name ${extensionName} --verbose

### Login to Azure and check subscription
az login
az account show --output table 

### Create Resource Group
groupName='mcr132-aml'
groupLocation='West US'
group=$(az group create --name ${groupName} --location "${groupLocation}" --verbose)

### Deploy basic Azure ML Service workspace environment
az ml workspace create --workspace-name 'col-ml-01' --friendly-name 'colombia-ml-01' --resource-group 'mcr132-aml' --location 'West US' --verbose

az group delete --name 'mcr132-aml' --yes --verbose