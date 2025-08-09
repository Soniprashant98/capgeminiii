Terraform - Azure Resource Group Creation
This project demonstrates how to create an Azure Resource Group using the Terraform azurerm provider.

📋 Prerequisites
Terraform installed

Azure CLI installed

An active Azure Subscription

Logged in to Azure CLI:

bash
Copy
Edit
az login
📂 Project Structure
bash
Copy
Edit
.
├── main.tf       # Terraform configuration
├── variables.tf  # Input variables
├── outputs.tf    # Output values
└── README.md     # Documentation
⚙️ Configuration
main.tf
hcl
Copy
Edit
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
variables.tf
hcl
Copy
Edit
variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure region where the Resource Group will be created"
  type        = string
  default     = "East US"
}
outputs.tf
hcl
Copy
Edit
output "resource_group_id" {
  description = "The ID of the created Resource Group"
  value       = azurerm_resource_group.rg.id
}
🚀 Usage
Clone the repository

bash
Copy
Edit
git clone <repo-url>
cd <repo-folder>
Initialize Terraform

bash
Copy
Edit
terraform init
Plan the deployment

bash
Copy
Edit
terraform plan -var "resource_group_name=my-rg"
Apply the configuration

bash
Copy
Edit
terraform apply -var "resource_group_name=my-rg" -auto-approve
View Outputs

bash
Copy
Edit
terraform output
🧹 Cleanup
To delete the created resource group:

bash
Copy
Edit
terraform destroy -var "resource_group_name=my-rg" -auto-approve
📚 References
Terraform AzureRM Provider Docs

Azure Resource Group Docs

