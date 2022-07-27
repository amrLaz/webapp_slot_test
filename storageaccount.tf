resource "azurerm_resource_group" "rg" {
  name     = "resource_groupe_tf"
  location = "West Europe"
}
resource "azurerm_storage_account" "storage" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}