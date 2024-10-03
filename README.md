# Azure Project: Web App Creation

This project demonstrates how to create and manage Azure resources such as Web Apps using **PowerShell** and **ARM templates**. It automates the provisioning of services in Azure using scripts and templates.

## Prerequisites
- Azure account with an active subscription.
- **Azure PowerShell** module installed (`Install-Module -Name Az`).
- **Git** for cloning the repository.

## Setup

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/1244Matt1244/azure_project.git
   cd azure_project
   ```

2. **Run PowerShell Script**:
   ```powershell
   .\2CreateWebApp2.ps1 -resourceGroupName "YourResourceGroup" -servicePlanName "YourServicePlan" -webAppName "YourWebAppName" -location "EastUS"
   ```

   This will create a new resource group, app service plan, and a web app in the specified Azure location.

3. **Deploy via ARM Template**:
   You can also deploy resources using the ARM template:
   ```bash
   az deployment group create --resource-group YourResourceGroup --template-file template.json --parameters parameters.json
   ```

## Parameters

- **resourceGroupName**: Name of the resource group to be created.
- **servicePlanName**: Name of the App Service Plan for the Web App.
- **webAppName**: Unique name for the Web App.
- **location**: Azure region (e.g., `EastUS`, `WestEurope`).

## Cleanup

To remove the resources:
```bash
az group delete --name YourResourceGroup --no-wait --yes
```

## License
This project is licensed under the MIT License.
