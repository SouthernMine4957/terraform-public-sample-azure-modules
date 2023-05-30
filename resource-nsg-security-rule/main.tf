resource "azurerm_network_security_rule" "nsg-security-rule" {
  name                         = var.security-rule-name
  resource_group_name          = var.rg-name
  network_security_group_name  = var.nsg-name
  priority                     = var.security-rule-priority
  direction                    = var.security-rule-direction
  access                       = var.security-rule-access
  protocol                     = var.security-rule-protocol
  source_port_range            = var.security-rule-source-port-range
  destination_port_range       = var.security-rule-destination-port-range
  source_port_ranges           = var.security-rule-source-port-ranges
  destination_port_ranges      = var.security-rule-destination-port-ranges
  source_address_prefix        = var.security-rule-source-address-prefix
  destination_address_prefix   = var.security-rule-destination-address-prefix
  source_address_prefixes      = var.security-rule-source-address-prefixes
  destination_address_prefixes = var.security-rule-destination-address-prefixes
  description                  = var.security-rule-description
}