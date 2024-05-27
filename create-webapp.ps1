param (
    [Parameter(Mandatory=$true)]
    [string]$resourceGroupName,
    
    [Parameter(Mandatory=$true)]
    [string]$servicePlanName,
    
    [Parameter(Mandatory=$true)]
    [string]$webAppName,
    
    [Parameter(Mandatory=$true)]
    [string]$location
)

# Connect to Azure account
Connect-AzAccount

# Create the Web App
$webApp = New-AzWebApp -ResourceGroupName $resourceGroupName -Name $webAppName -Location $location -AppServicePlan $servicePlanName

# Output the Web App details
Write-Output "Web App created: $($webApp.DefaultHostName)"
