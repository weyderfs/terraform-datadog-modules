# Metric-Based SLO
# Create a new Datadog service level objective
resource "datadog_service_level_objective" "slo" {
  name        = var.name
  type        = var.type
  description = var.description

  query {
    numerator   = var.query_numerator
    denominator = var.query_denominator
  }

  dynamic "thresholds" {
    for_each = var.thresholds
    content {
      target    = lookup(thresholds.value, "target", null)
      timeframe = lookup(thresholds.value, "timeframe", null)
      warning   = lookup(thresholds.value, "warning", null)
    }
  }

  tags = var.tags
}