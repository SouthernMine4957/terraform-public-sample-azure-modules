resource "azurerm_managed_disk" "managed-disk" {
  name                 = var.name
  location             = var.location
  resource_group_name  = var.rg-name
  tags                 = var.tags
  storage_account_type = var.storage-account-type
  create_option        = var.create-option
  Import               = var.import
  ImportSecure         = var.importsecure
  Empty                = var.empty
  Copy                 = var.Copy
  FromImage            = var.FromImage
  Restore              = var.Restore
  Upload               = var.upload
  disk_size_gb         = var.disk-size-gb
}