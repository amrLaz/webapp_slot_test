resource "azurerm_resource_group" "rg" {
  name     = "resource_groupe_tf"
  location = "West Europe"
  tags = {
    ENV : "Test WebAppSlot"
  }
}