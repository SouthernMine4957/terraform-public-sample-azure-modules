resource "azurerm_network_interface" "nic" {
  name                = var.nic-name
  location            = var.location
  resource_group_name = var.rg-name
  tags                = var.tags

  ip_configuration {
    name                          = var.ip-config-name
    subnet_id                     = var.subnet-id
    private_ip_address_allocation = var.private-ip-address-allocation
    public_ip_address_id          = var.public-ip-address-id
  }
}