resource "datadog_monitor" "dm" {
  name               = var.name
  type               = var.type
  message            = var.message
  // escalation_message = var.escalation_message

  query = var.query

  // monitor_thresholds = var.monitor_thresholds

  include_tags = var.include_tags

  tags = var.tags
}