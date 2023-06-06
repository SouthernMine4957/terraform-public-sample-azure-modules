resource "azurerm_dev_test_global_vm_shutdown_schedule" "vvm-shutdown-schedule" {
  location              = var.location
  virtual_machine_id    = var.virtual-machine-id
  enabled               = var.is-enabled
  timezone              = var.timezone
  tags                  = var.tags
  daily_recurrence_time = var.daily-recurrence-time

  notification_settings {
    enabled         = var.is-notification-enabled
    email           = var.email
    time_in_minutes = var.time-in-minutes
    webhook_url     = var.webhook-url
  }
}