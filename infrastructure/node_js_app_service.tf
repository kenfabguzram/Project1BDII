

resource "azurerm_service_plan" "main" {
  name                = "${var.group}-sp-zipdeploy"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  os_type             = "Linux"
  sku_name            = "S1"
}


resource "azurerm_linux_web_app" "main" {
  name                = "${var.group}-node-js"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_service_plan.main.id

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }

  site_config {
    application_stack {
      docker_image     = "kenfabguzram/nodejs-app"
      docker_image_tag = "latest"
    }
  }
}