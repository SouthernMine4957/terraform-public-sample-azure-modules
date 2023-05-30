resource "azurerm_network_security_rule" "nsg-security-rule" {
  name                         = var.name
  resource_group_name          = var.rg-name
  network_security_group_name  = var.nsg-name
  priority                     = var.priority
  direction                    = var.direction
  access                       = var.access
  protocol                     = var.protocol
  source_port_range            = var.source-port-range
  destination_port_range       = var.destination-port-range
  source_port_ranges           = var.source-port-ranges
  destination_port_ranges      = var.destination-port-ranges
  source_address_prefix        = var.source-address-prefix
  destination_address_prefix   = var.destination-address-prefix
  source_address_prefixes      = var.source-address-prefixes
  destination_address_prefixes = var.destination-address-prefixes
  description                  = var.description
}