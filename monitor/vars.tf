variable "name" {
  type        = string
  description = "(String) Name of Datadog monitor."
}

variable "type" {
  type        = string
  description = "(String) The type of the monitor. The mapping from these types to the types found in the Datadog Web UI can be found in the Datadog API documentation page"
}

variable "message" {
  type        = string
  description = "(String) A message to include with notifications for this monitor."
}

// variable "escalation_message" {
//   type        = string
//   description = "(String) A message to include with a re-notification. Supports the @username notification allowed elsewhere."
// }

variable "query" {
  type        = string
  description = "(String) The monitor query to notify on. Note this is not the same query you see in the UI and the syntax is different depending on the monitor type, please see the API Reference for details. terraform plan will validate query contents unless validate is set to false."
}

// variable "monitor_thresholds" {
//   type        = map(string)
//   description = "(Block List, Max: 1) Alert thresholds of the monitor" 
// }

variable "notify_audit" {
  type    = bool
  default = true
  description = "(Boolean) A boolean indicating whether tagged users will be notified on changes to this monitor."
}

variable "include_tags" {
  type        = bool
  default     = true
  description = "(Boolean) A boolean indicating whether notifications from this monitor automatically insert its triggering tags into the title. Defaults to true"
}
variable "tags" {
  type        = set(string)
  description = "(Set of String) A list of tags to associate with your monitor. This can help you categorize and filter monitors in the manage monitors page of the UI. Note: it's not currently possible to filter by these tags when querying via the API"
}