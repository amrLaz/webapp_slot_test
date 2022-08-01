
resource "azurerm_service_plan" "splan" {
  name                = "example"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_name            = "P1v2"
  os_type             = "Windows"
}


resource "azurerm_windows_web_app" "webapp" {
  name                = "webapp-tf"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.splan.location
  service_plan_id     = azurerm_service_plan.splan.id

  site_config {
    always_on                = true
    ftps_state               = "Disabled"
    remote_debugging_enabled = false
    vnet_route_all_enabled   = true
    application_stack {
      current_stack = "node"
      node_version  = "16-LTS"
    }

  }
  identity {
    type = "SystemAssigned"
  }
}




resource "azurerm_windows_web_app_slot" "webappslot" {
  name           = "webapp-tf-slot"
  app_service_id = azurerm_windows_web_app.webapp.id


  site_config {
    always_on                = true
    ftps_state               = "Disabled"
    remote_debugging_enabled = false
    vnet_route_all_enabled   = true
    application_stack {
      current_stack = "node"
      node_version  = "16-LTS"
    }
  }


  identity {
    type = "SystemAssigned"
  }
}
