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
