# Azure Cloud DevOps Assignment

## Overview

This repository contains the necessary Azure Resource Manager (ARM) templates and PowerShell scripts to complete the Azure Cloud DevOps assignment. The assignment involves creating Azure resources, including a resource group, SQL databases, and Web Apps, with a focus on cost-efficiency and resource sharing.

## Prerequisites

Before you begin, ensure you have the following:


- A GitHub account to host the repository.
- An email address to create a free Azure subscription.

- The Azure PowerShell module installed on your machine.

## Repository Contents


- `2CreateWebApp2.ps1`: A PowerShell script to create a new Azure Web App.
- `template.json`: An ARM template that defines the SQL databases and Web Apps.

- `parameters.json`: A parameters file to supply values to the ARM template.

## Instructions

### Creating Azure Resources


1. Sign up for a free Azure subscription at https://azure.microsoft.com/en-us/free.
2. Create a resource group in the Azure portal to organize the resources.

3. Use the Azure portal UI to create three SQL Database resources within the resource group.

### Using the PowerShell Script

To create a new Web App using the provided PowerShell script:


1. Open PowerShell and navigate to the directory containing the `2CreateWebApp2.ps1` script.
2. Execute the script with the required parameters:

```powershell
.\2CreateWebApp2.ps1 -resourceGroupName "YourResourceGroupName" -servicePlanName "YourServicePlanName" -webAppName "YourWebAppName" -location "YourLocation"
