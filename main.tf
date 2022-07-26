terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
    }
    azurerm =   {
      source  =   "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    subscription_id =   var.subscription_id
    tenant_id       =   var.tenant_id
    
    features {}
}

provider "azuread" {
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    tenant_id       =   var.tenant_id
    alias           =   "ad"
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "eastasia"
}
