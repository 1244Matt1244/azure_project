# Variables
$resourceGroupName = "SyskitAssignmentGroup_2"
$servicePlanName = "SyskitAppServicePlan"
$webAppName = "2SysWebApp2" # Change the suffix number for each new app
$location = "North Europe"

# Connect to Azure
Connect-AzAccount

WARNING: Interactive authentication is not supported in this session, please run cmdlet 'Connect-AzAccount -UseDeviceAuthentication'

# Create the Web App
New-AzWebApp -ResourceGroupName $resourceGroupName -AppServicePlan $servicePlanName -Name $webAppName -Location $location