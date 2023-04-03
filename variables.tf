variable "name" {
  type        = string
  description = "The name of the virtual network."
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the virtual network."
}

variable "location" {
  type        = string
  description = "The location where the virtual network will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the virtual network will be created."
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet."
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "The address prefix(es) for the subnet."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resources."
}
