

resource "azurerm_log_analytics_workspace" "nodejs" {
  name                = "nodejs-app"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
}


resource "azurerm_container_app" "nodejs" {
  name                         = "nodejs-app"
  container_app_environment_id = azurerm_container_app_environment.main.id
  resource_group_name          = azurerm_resource_group.main.name
  revision_mode                = "Single"
  identity {
    type = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.main.id]
  }
template {
    max_replicas = 10
    min_replicas = 0
    container {
      name   = "nodejs-app"
      image  = "docker.io/kenfabguzram/nodejs-app:latest"
      cpu    = "0.25"
      memory = "0.5Gi"
      

#      liveness_probe {
#        port      = 8080
#        timeout   = 5
#        transport = "HTTP"
#      }

#      readiness_probe {
#        port      = 8080
#        timeout   = 5
#        transport = "HTTP"
#      }

    }
  }

  ingress {
    allow_insecure_connections = true
    external_enabled           = true
    target_port                = 8080
    traffic_weight {
      percentage = 100
      latest_revision = true
    }
  }
}

