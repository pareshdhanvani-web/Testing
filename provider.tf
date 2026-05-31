terraform {
  required_version = ">=1.5.0"
  required_providers {
    azurerm = {
      version = ">=4.71.0"
      source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rgtf"
    storage_account_name = "tfstoragenew"
    container_name       = "tfcontainer"
    key                  = "tf280526snet.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.sub_id
}