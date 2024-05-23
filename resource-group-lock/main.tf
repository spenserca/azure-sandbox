terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.104.2"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

data "azurerm_storage_account" "storage" {
  resource_group_name = "spenserca-azure-sandbox-read-only-rg-01"
  name                = "stscarot01"
}

resource "azurerm_storage_container" "cont" {
  storage_account_name = data.azurerm_storage_account.storage.name
  name                 = "test-container"
}