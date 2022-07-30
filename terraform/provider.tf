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
  client_id = "18625e5d-e15d-4c63-b145-96f09f3f5a65"
  client_secret = "gwj8Q~sAzYoHcD~t6H5uTn9mQuWwL6D~ZLkYNcpY"
  tenant_id = "4f490be5-b518-483a-99f6-90b580ae0cb5"
  features {}
}

