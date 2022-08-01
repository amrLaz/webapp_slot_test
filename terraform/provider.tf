# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
   backend "azurerm" {
        resource_group_name  = "RG-REMOTE-BACKEND"
        storage_account_name = "tfstatestorageamr"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  client_id = "18625e5d-e15d-4c63-b145-96f09f3f5a65"
  client_secret = "gwj8Q~sAzYoHcD~t6H5uTn9mQuWwL6D~ZLkYNcpY"
  tenant_id = "4f490be5-b518-483a-99f6-90b580ae0cb5"
  subscription_id = "39c87760-f7b4-4479-ba4c-a0ed22bc35e2"
  features {}
}

