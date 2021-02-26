terraform {
  backend "azurerm" {
    resource_group_name  = "azure-sandbox-tf"
    storage_account_name = "scaazsbxtfstate"
    container_name       = "az-sandbox-tf-state"
    key                  = "az.sbx.policy.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg_policy" {
  location = "Central US"
  name     = "azure-sandbox-policy"
}