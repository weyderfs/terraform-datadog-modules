resource "datadog_monitor" "dm" {
  name                = var.name
  type                = var.type
  message             = var.message
  priority            = var.priority
  require_full_window = var.require_full_window
  notify_audit        = var.notify_audit
  restricted_roles    = var.restricted_roles
  query               = var.query
  new_group_delay     = var.new_group_delay
  on_missing_data     = var.on_missing_data

  dynamic "monitor_thresholds" {
    for_each = var.monitor_thresholds
    content {
      critical          = lookup(monitor_thresholds.value, "critical", null)
      critical_recovery = lookup(monitor_thresholds.value, "critical_recovery", null)
      ok                = lookup(monitor_thresholds.value, "ok", null)
      unknown           = lookup(monitor_thresholds.value, "unknown", null)
      warning           = lookup(monitor_thresholds.value, "warning", null)
      warning_recovery  = lookup(monitor_thresholds.value, "warning_recovery", null)
    }
  }

  dynamic "monitor_threshold_windows" {
    for_each = var.monitor_threshold_windows
    content {
      recovery_window  = lookup(monitor_threshold_windows.value, "recovery_window", null)
      trigger_window   = lookup(monitor_threshold_windows.value, "trigger_window", null)
    }
  }

  include_tags = var.include_tags
  tags         = var.tags
}
