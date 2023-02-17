terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.40, < 4.0"
    }
  }
}

module "network" {
  source = "./network/firewall"
  virtual_network_name = var.vnet_name
  subnet_address_prefix = var.subnet_address_prefix
  firewall_name = var.firewall_name
  resource_group_name = var.resource_group_name
  location = var.location
  subnet_name = var.subnet_name
  route_table_name = var.route_table_name
  firewall_policy_name = var.firewall_policy_name
  firewall_policy_rule_collection_group_name = var.firewall_policy_rule_collection_group_name
  firewall_policy_rule_collection_group_priority = var.firewall_policy_rule_collection_group_priority
  firewall_policy_rule_collection_name = var.firewall_policy_rule_collection_name
  firewall_policy_rule_collection_priority = var.firewall_policy_rule_collection_priority
  network_interface_name = var.network_interface_name
  network_security_group_name = var.network_security_group_name
  network_security_rule_name = var.network_security_rule_name
  network_security_rule_priority = var.network_security_rule_priority
  network_security_rule_direction = var.network_security_rule_direction
  network_security_rule_access = var.network_security_rule_access
  network_security_rule_protocol = var.network_security_rule_protocol
  network_security_rule_source_port_range = var.network_security_rule_source_port_range
  network_security_rule_destination_port_range = var.network_security_rule_destination_port_range
  network_security_rule_destination_address_prefix = var.network_security_rule_destination_address_prefix
  network_security_rule_source_address_prefix = var.network_security_rule_source_address_prefixes
  tags = var.tags
}
module "aks" {
  source = "./module/aks"
  resource_group_name = var.resource_group_name
  location = var.location
  aks_name = var.aks_name
  dns_prefix = var.dns_prefix
  kubernetes_version = var.kubernetes_version
  node_pool_name = var.node_pool_name
  node_count = var.node_count
  vm_size = var.vm_size
  tags = var.tags
}
module "acr" {
  source = "./module/acr"
  acr_admin_enabled = var.acr_admin_enabled
  resource_group_name = var.resource_group_name
  location = var.location
  acr_name = var.acr_name
  acr_sku = var.acr_sku
  tags = var.tags
}
module "avd" {
  source = "./module/avd"
  avd_name = var.avd_name
  location = var.location
  resource_group_name = var.resource_group_name
  expiration_date = var.expiration_date
  tags = var.tags
}
module "virtual_network" {
  source = "./module/virtual_network"
  vnet_name = var.vnet_name
  location = var.location
  resource_group_name = var.resource_group_name
  address_space = var.address_space
  subnet_name = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  tags = var.tags
}



