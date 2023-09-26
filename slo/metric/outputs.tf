output "name" {
  value       = datadog_service_level_objective.slo.name
  description = "The Datadog SLO name"
}

output "type" {
  value       = datadog_service_level_objective.slo.type
  description = "The Datadog SLO type"
}