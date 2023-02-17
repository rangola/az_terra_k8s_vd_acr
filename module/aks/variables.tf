variable "aks_name" {
  description = "The name of the AKS cluster."
  type        = string
}
variable "location" {
  description = "The location of the AKS cluster."
  type        = string
}
variable "resource_group_name" {
  description = "The resource group name of the AKS cluster."
  type        = string
}
variable "dns_prefix" {
  description = "The dns prefix of the AKS cluster."
  type        = string
}
variable "kubernetes_version" {
  description = "The kubernetes version of the AKS cluster."
  type        = string
}
variable "node_pool_name" {
  description = "The node pool name of the AKS cluster."
  type        = string
}
variable "node_count" {
  description = "The node count of the AKS cluster."
  type        = number
}
variable "vm_size" {
  description = "The vm size of the AKS cluster."
  type        = string
}
variable "tags" {
  description = "The tags of the AKS cluster."
  type        = map(string)
}
