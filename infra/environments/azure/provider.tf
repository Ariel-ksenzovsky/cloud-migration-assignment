terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # Remote state (אופציונלי) - אחרי שתיצור storage account + container
   backend "azurerm" {
     resource_group_name  = "rg-backend"
     storage_account_name = "tfstate1234567890"
     container_name       = "migration-assignment-azure"
     key                  = "azure/prod/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
