resource "azurerm_network_security_rule" "nsg-security-rule" {
  name                       = var.security-rule-name
  priority                   = var.security-rule-priority
  direction                  = var.security-rule-direction
  access                     = var.security-rule-access
  protocol                   = var.security-rule-protocol
  source_port_range          = var.security-rule-source-port-range
  destination_port_range     = var.security-rule-destination-port-range
  source_address_prefix      = var.security-rule-source-address-prefix
  destination_address_prefix = var.security-rule-destination-address-prefix
  description                = var.security-rule-description
}