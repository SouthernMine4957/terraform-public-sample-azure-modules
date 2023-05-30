resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg-name
  location            = var.location
  resource_group_name = var.rg-name
  tags                = var.tags
}