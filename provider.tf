# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

