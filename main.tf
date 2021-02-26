terraform {
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

resource "azurerm_resource_group" "rg_tf_state" {
  location = "Central US"
  name     = "azure-sandbox-tf"
}

resource "azurerm_storage_account" "sa_tf_state" {
  name                     = "scaazsbxtfstate"
  account_tier             = "Standard"
  location                 = azurerm_resource_group.rg_tf_state.location
  resource_group_name      = azurerm_resource_group.rg_tf_state.name
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc_tf_state" {
  name                 = "az-sandbox-tf-state"
  storage_account_name = azurerm_storage_account.sa_tf_state.name
}