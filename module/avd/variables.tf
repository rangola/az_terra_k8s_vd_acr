variable "avd_name" {
  description = "Name of the Azure Virtual Desktop"
  type        = string
}
variable "location" {
  description = "Location of the Azure Virtual Desktop"
  type        = string
}
variable "resource_group_name" {
  description = "Resource group name of the Azure Virtual Desktop"
  type        = string
}
variable "expiration_date" {
  description = "Expiration date of the Azure Virtual Desktop"
  type        = string
}
variable "tags" {
  description = "Tags of the Azure Virtual Desktop"
  type        = map(string)
}

