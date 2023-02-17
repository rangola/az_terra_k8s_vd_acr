resource "azurerm_firewall" "firewall" {
  name                = var.firewall_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
resource "azurerm_firewall_policy" "firewall_policy" {
  name                = var.firewall_policy_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
resource "azurerm_firewall_policy_rule_collection_group" "firewall_policy_rule_collection_group" {
  name                = var.firewall_policy_rule_collection_group_name
  firewall_policy_id  = azurerm_firewall_policy.firewall_policy.id
  priority            = var.firewall_policy_rule_collection_group_priority
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
resource "azurerm_firewall_policy_rule_collection" "firewall_policy_rule_collection" {
  name                = var.firewall_policy_rule_collection_name
  firewall_policy_id  = azurerm_firewall_policy.firewall_policy.id
  priority            = var.firewall_policy_rule_collection_priority
  resource_group_name = var.resource_group_name
  tags                = var.tags
  rule_collection_type = "FirewallPolicyFilterRuleCollection"
  action = "Allow"
  rule {
    name = "Allow-ACR-Access"
    description = "Allow ACR access"
    source_addresses = ["AzureCloud.AKS.ACR"]
    destination_addresses = ["AzureCloud.AKS.ACR"]
    destination_ports = ["443"]
    protocols = ["TCP"]
    fqdn_tags = ["AzureContainerRegistry"]
  }
  rule {
    name = "Allow-AKS-Access"
    description = "Allow AKS access"
    source_addresses = ["AzureCloud.AKS.AKS"]
    destination_addresses = ["AzureCloud.AKS.AKS"]
    destination_ports = ["443"]
    protocols = ["TCP"]
    fqdn_tags = ["AzureKubernetesService"]
  }
  rule {
    name = "Allow-AKS-Access-From-AVD"
    description = "Allow AKS access from ACR"
    source_addresses = ["AzureCloud.AKS.AVD"]
    destination_addresses = ["AzureCloud.AKS.AKS"]
    destination_ports = ["443"]
    protocols = ["TCP"]
    fqdn_tags = ["AzureKubernetesService"]
  }
  rule {
    name = "Allow-ACR-Access-From-AVD"
    description = "Allow ACR access from ACR"
    source_addresses = ["AzureCloud.AKS.AVD"]
    destination_addresses = ["AzureCloud.AKS.ACR"]
    destination_ports = ["443"]
    protocols = ["TCP"]
    fqdn_tags = ["AzureContainerRegistry"]
  }
  rule {
    name = "Allow-RDP-From-Outside"
    description = "Allow RDP from outside"
    source_addresses = ["*"]
    destination_addresses = ["AzureCloud.AKS.AVD"]
    destination_ports = ["3389"]
    protocols = ["TCP"]
  }
}
resource "azurerm_network_interface" "network_interface" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
resource "azurerm_network_security_group" "network_security_group" {
  name                = var.network_security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
resource "azurerm_network_security_rule" "network_security_rule" {
  name                        = var.network_security_rule_name
  priority                    = var.network_security_rule_priority
  direction                   = var.network_security_rule_direction
  access                      = var.network_security_rule_access
  protocol                    = var.network_security_rule_protocol
  source_port_range           = var.network_security_rule_source_port_range
  destination_port_range      = var.network_security_rule_destination_port_range
  source_address_prefix       = var.network_security_rule_source_address_prefix
  destination_address_prefix  = var.network_security_rule_destination_address_prefix
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.network_security_group.name
}
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.subnet_address_prefix]
  service_endpoints    = ["Microsoft.ContainerRegistry"]
  delegation {
    name = "delegation"
    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
    }
  }
}
resource "azurerm_subnet_network_security_group_association" "subnet_network_security_group_association" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.network_security_group.id
}
resource "azurerm_subnet_route_table_association" "subnet_route_table_association" {
  subnet_id      = azurerm_subnet.subnet.id
  route_table_id = azurerm_route_table.route_table.id
}
resource "azurerm_route_table" "route_table" {
  name                = var.route_table_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
resource "azurerm_route" "route" {
  name                   = var.route_name
  resource_group_name    = var.resource_group_name
  route_table_name       = azurerm_route_table.route_table.name
  address_prefix         = var.route_address_prefix
  next_hop_type          = var.route_next_hop_type
  next_hop_in_ip_address = var.route_next_hop_in_ip_address
}


