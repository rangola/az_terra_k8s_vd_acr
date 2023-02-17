variable "firewall_name" {
  type = string
  description = "The name of the firewall resource"
}

variable "location" {
  type = string
  description = "The location where the resource group and all resources will be created"
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group"
}

variable "tags" {
  type = map(string)
  description = "A mapping of tags to assign to the resources"
}

variable "firewall_policy_name" {
  type = string
  description = "The name of the firewall policy resource"
}

variable "firewall_policy_rule_collection_group_name" {
  type = string
  description = "The name of the firewall policy rule collection group resource"
}

variable "firewall_policy_rule_collection_group_priority" {
  type = number
  description = "The priority of the firewall policy rule collection group resource"
}

variable "firewall_policy_rule_collection_name" {
  type = string
  description = "The name of the firewall policy rule collection resource"
}

variable "firewall_policy_rule_collection_priority" {
  type = number
  description = "The priority of the firewall policy rule collection resource"
}

variable "network_interface_name" {
  type = string
  description = "The name of the network interface resource"
}

variable "network_security_group_name" {
  type = string
  description = "The name of the network security group resource"
}

variable "network_security_rule_name" {
  type = string
  description = "The name of the network security rule resource"
}

variable "network_security_rule_priority" {
  type = number
  description = "The priority of the network security rule resource"
}

variable "network_security_rule_direction" {
  type = string
  description = "The direction of the network security rule"
}

variable "network_security_rule_access" {
  type = string
  description = "The access level of the network security rule"
}

variable "network_security_rule_protocol" {
  type = string
  description = "The protocol of the network security rule"
}

variable "network_security_rule_source_port_range" {
  type = string
  description = "The source port range of the network security rule"
}

variable "network_security_rule_destination_port_range" {
  type = string
  description = "The destination port range of the network security rule"
}

variable "network_security_rule_source_address_prefix" {
  type = list(string)
  description = "The source address prefix of the network security rule"
}

variable "network_security_rule_destination_address_prefix" {
  type = string
  description = "The destination address prefix of the network security rule"
}

variable "subnet_name" {
  type = string
  description = "The name of the subnet resource"
}

variable "virtual_network_name" {
  type = string
  description = "The name of the virtual network resource"
}

variable "subnet_address_prefix" {
  type = string
  description = "The address prefix of the subnet"
}

variable "route_table_name" {
  type = string
  description = "The name of the route table resource"
}
