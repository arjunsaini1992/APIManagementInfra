resource "azurerm_api_management" "api" {
  name                = var.api_management_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher {
    name  = "Your Company"
    email = "admin@yourcompany.com"
  }
  sku {
    name     = "Developer_1"
    capacity = 1
  }

  virtual_network_configuration {
    subnet_id = var.subnet_id
  }
}
