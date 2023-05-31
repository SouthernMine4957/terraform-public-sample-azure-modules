resource "azurerm_public_ip" "public-ip" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.rg-name
  tags                    = var.tags
  allocation_method       = var.allocation-method
  zones                   = var.zones
  ddos_protection_mode    = var.ddos-protection-mode
  ddos_protection_plan_id = var.ddos-protection-plan-id
  domain_name_label       = var.domain-name-label
  edge_zone               = var.edge-zone
  idle_timeout_in_minutes = var.idle-timeout-in-minutes
  ip_tags                 = var.ip-tags
  ip_version              = var.ip-version
  public_ip_prefix_id     = var.public-ip-prefix-id
  reverse_fqdn            = var.reverse-fqdn
  sku                     = var.sku
  sku_tier                = var.sku-tier
}