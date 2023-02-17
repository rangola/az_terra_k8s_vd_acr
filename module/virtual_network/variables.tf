variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}
variable "location" {
  description = "The location of the virtual network."
  type        = string
}
variable "resource_group_name" {
  description = "The resource group name of the virtual network."
  type        = string
}
variable "address_space" {
  description = "The address space of the virtual network."
  type        = string
}
variable "subnet_name" {
  description = "The subnet name of the virtual network."
  type        = string
}
variable "subnet_address_prefix" {
  description = "The subnet address prefix of the virtual network."
  type        = string
}
variable "tags" {
  description = "The tags of the virtual network."
  type        = map(string)
}
