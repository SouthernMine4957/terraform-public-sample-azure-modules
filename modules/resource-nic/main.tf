resource "azurerm_network_interface" "nic" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.rg-name
  tags                          = var.tags
  dns_servers                   = var.dns-servers
  edge_zone                     = var.edge-zone
  enable_ip_forwarding          = var.enable-ip-forwarding
  enable_accelerated_networking = var.enable-accelerated-networking
  internal_dns_name_label       = var.internal-dns-name-label

  ip_configuration {
    name                                               = var.ip-config-name
    gateway_load_balancer_frontend_ip_configuration_id = var.gateway-load-balancer-frontend-ip-configuration-id
    subnet_id                                          = var.subnet-id
    private_ip_address_version                         = var.private-ip-address-version
    private_ip_address_allocation                      = var.private-ip-address-allocation
    public_ip_address_id                               = var.public-ip-address-id
    primary                                            = var.primary
    private_ip_address                                 = var.private-ip-address
  }
}