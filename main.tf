provider "azurerm" {
  features {
    
  }
}

#SETTING STATEFILE TO THE REMOTE

data "azurerm_resource_group" "azurermResourceGroup" {
    name = var.rg_name 
    location = var.location
}

resource "azurerm_storage_account" "azurermStorageAccount" {
  name                     = var.storage_account_name
  resource_group_name      =  data.azurerm_resource_group.azurermResourceGroup.name
  location                 = data.azurerm_resource_group.azurermResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "azurermStorageContainer" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.azurermStorageAccount.name
  container_access_type = "private"
}

# terraform {
#   backend "azurerm" {
#     resource_group_name   = "biswa-rg-impl-1"
#     storage_account_name  = "biswastorageaccount12345impl1"
#     container_name        = "tfstate"
#     key                   = "terraform.tfstate"
#   }
# }