variable "acr_name" {
  description = "The name of the container registry"
  type        = string
}
variable "location" {
  description = "The location of the container registry"
  type        = string
}
variable "resource_group_name" {
  description = "The resource group name of the container registry"
  type        = string
}
variable "acr_sku" {
  description = "The sku of the container registry"
  type        = string
}
variable "acr_admin_enabled" {
  description = "The admin enabled of the container registry"
  type        = bool
}
variable "tags" {
  description = "The tags of the container registry"
  type        = map(string)
}
