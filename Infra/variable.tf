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

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
}

variable "location" {
  description = "Azure region for resources."
}

variable "virtual_network_name" {
  description = "Name of the Azure Virtual Network."
}

variable "address_space" {
  description = "Address space for the Virtual Network in CIDR notation."
}

variable "subnet_name" {
  description = "Name of the subnet."
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet in CIDR notation."
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
}

variable "location" {
  description = "Azure region for resources."
}

variable "api_management_name" {
  description = "Name of the Azure API Management service."
}

variable "virtual_network_name" {
  description = "Name of the Azure Virtual Network."
}

variable "subnet_id" {
  description = "Name of the subnet where API Management should be deployed."
}
