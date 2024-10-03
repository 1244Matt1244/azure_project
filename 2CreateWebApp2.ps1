param (
    [string]$resourceGroupName,
    [string]$servicePlanName,
    [string]$webAppName,
    [string]$location
)

# Create a resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create an App Service Plan
New-AzAppServicePlan -Name $servicePlanName -ResourceGroupName $resourceGroupName -Location $location -Tier "Standard" -NumberofWorkers 1

# Create a Web App
New-AzWebApp -Name $webAppName -ResourceGroupName $resourceGroupName -Location $location -AppServicePlan $servicePlanName

Write-Host "Web App $webAppName created successfully!"
