variable "region" {
  default = "us-east-1"
}
variable "resource_group_name" {
  default = "rg-terraform-azure"
}
variable "location" {
  default = "eastus"
}
variable "vnet_name" {
  default = "vnet-terraform-azure"
}
variable "aks_name" {
  default = "aks-terraform-azure"
}
variable "acr_name" {
  default = "acr-terraform-azure"
}
variable "avd_name" {
  default = "avd-terraform-azure"
}
variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "firewall_name" {
  description = "The name of the firewall"
  type        = string
  default     = "my-firewall"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "my-subnet"
}

variable "route_table_name" {
  description = "The name of the route table"
  type        = string
  default     = "my-route-table"
}

variable "firewall_policy_name" {
  description = "The name of the firewall policy"
  type        = string
  default     = "my-firewall-policy"
}

variable "firewall_policy_rule_collection_group_name" {
  description = "The name of the firewall policy rule collection group"
  type        = string
  default     = "my-rule-collection-group"
}

variable "firewall_policy_rule_collection_group_priority" {
  description = "The priority of the firewall policy rule collection group"
  type        = number
  default     = 100
}

variable "firewall_policy_rule_collection_name" {
  description = "The name of the firewall policy rule collection"
  type        = string
  default     = "my-rule-collection"
}

variable "firewall_policy_rule_collection_priority" {
  description = "The priority of the firewall policy rule collection"
  type        = number
  default     = 100
}

variable "network_interface_name" {
  description = "The name of the network interface"
  type        = string
  default     = "my-network-interface"
}

variable "network_security_group_name" {
  description = "The name of the network security group"
  type        = string
  default     = "my-security-group"
}

variable "network_security_rule_name" {
  description = "The name of the network security rule"
  type        = string
  default     = "my-security-rule"
}

variable "network_security_rule_priority" {
  description = "The priority of the network security rule"
  type        = number
  default     = 100
}

variable "network_security_rule_direction" {
  description = "The direction of the network security rule"
  type        = string
  default     = "Inbound"
}

variable "network_security_rule_access" {
  type        = string
  default     = "Allow"
  description = "The type of access allowed for this network security rule. Possible values are 'Allow' and 'Deny'."
}

variable "network_security_rule_protocol" {
  type        = string
  default     = "Tcp"
  description = "The protocol for this network security rule. Possible values are 'Tcp', 'Udp', and 'All'."
}

variable "network_security_rule_source_port_range" {
  type        = string
  default     = "*"
  description = "The source port range for this network security rule."
}

variable "network_security_rule_destination_port_range" {
  type        = string
  default     = "*"
  description = "The destination port range for this network security rule."
}

variable "network_security_rule_destination_address_prefix" {
  type        = string
  default     = "*"
  description = "The destination IP address prefix for this network security rule."
}

variable "network_security_rule_source_address_prefixes" {
  type        = list(string)
  default     = ["*"]
  description = "The source IP address prefixes for this network security rule."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resources."
}

variable "dns_prefix" {
  type        = string
  default     = "aks"
  description = "The DNS prefix to use for the AKS cluster."
}

variable "kubernetes_version" {
  type        = string
  default     = "1.22.2"
  description = "The version of Kubernetes to use for the AKS cluster."
}

variable "node_pool_name" {
  type        = string
  default     = "default"
  description = "The name of the AKS node pool."
}

variable "node_count" {
  type        = number
  default     = 3
  description = "The number of nodes in the AKS node pool."
}

variable "vm_size" {
  type        = string
  default     = "Standard_DS2_v2"
  description = "The size of the virtual machines in the AKS node pool."
}

variable "acr_admin_enabled" {
  type        = bool
  default     = false
  description = "Whether or not to enable admin access to the ACR."
}
