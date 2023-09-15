module "api_management" {
  source = "./path/to/terraform-api-management-module"

  resource_group_name  = "my-resource-group"
  location             = "East US"
  api_management_name  = "my-api-management"
  virtual_network_name = "my-virtual-network"
  subnet_name          =  var.subnet_id
}

module "vnet" {
  source = "./path/to/terraform-vnet-module"

  resource_group_name = "my-resource-group"
  location            = "East US"
  virtual_network_name = "my-virtual-network"
  address_space       = ["10.0.0.0/16"]

  subnets = [
    {
      name               = "subnet1"
      address_prefix     = "10.0.1.0/24"
    },
    {
      name               = "subnet2"
      address_prefix     = "10.0.2.0/24"
    }
  ]
}


module "app_service_plan" {
  source = "./path/to/terraform-app-service-plan-module"

  resource_group_name = "my-resource-group"
  location            = "East US"
  app_service_plan_name = "my-app-service-plan"
  staging_slot_name   = "staging-slot"
  production_slot_name = "production-slot"
}
