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

resource "azurerm_resource_group" "read_only" {
  name     = "spenserca-azure-sandbox-read-only-rg-01"
  location = "centralus"
}

resource "azurerm_storage_account" "storage" {
  name                     = "stscarot01"
  resource_group_name      = azurerm_resource_group.read_only.name
  location                 = azurerm_resource_group.read_only.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}

resource "azurerm_management_lock" "lock" {
  name       = "read-only-resource-group-lock"
  scope      = azurerm_resource_group.read_only.id
  lock_level = "ReadOnly"
  notes      = "This resource group is read-only"

  depends_on = [
    azurerm_storage_account.storage
  ]
}
