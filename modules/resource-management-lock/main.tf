resource "azurerm_management_lock" "management-lock" {
  name       = var.name
  scope      = var.scope
  lock_level = var.lock-level
  notes      = var.notes
}