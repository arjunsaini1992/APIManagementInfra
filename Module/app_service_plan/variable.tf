variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
}

variable "location" {
  description = "Azure region for resources."
}

variable "app_service_plan_name" {
  description = "Name of the Azure App Service Plan."
}

variable "staging_slot_name" {
  description = "Name of the staging deployment slot."
}

variable "production_slot_name" {
  description = "Name of the production deployment slot."
}
