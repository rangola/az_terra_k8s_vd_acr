resource "azurerm_virtual_desktop_host_pool" "avd" {
  name                = var.avd_name
  location            = var.location
  resource_group_name = var.resource_group_name
  type                = "Pooled"
  load_balancer_type  = "BreadthFirst"
  validation_environment = false
  max_session_limit = 0
  personal_desktop_assignment_type = "Automatic"
  registration_info {
    expiration_date = var.expiration_date
  }
  tags = var.tags
}