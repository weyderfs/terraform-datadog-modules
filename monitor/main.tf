resource "datadog_monitor" "dm" {
  name                = var.name
  type                = var.type
  message             = var.message
  priority            = var.priority
  require_full_window = var.require_full_window
  notify_audit        = var.notify_audit
  restricted_roles    = var.restricted_roles
  query               = var.query

  monitor_thresholds {
    critical = var.monitor_thresholds_critical
  }

  include_tags = var.include_tags
  tags         = var.tags
}