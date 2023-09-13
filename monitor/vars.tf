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

variable "query" {
  type        = string
  description = "(String) The monitor query to notify on. Note this is not the same query you see in the UI and the syntax is different depending on the monitor type, please see the API Reference for details. terraform plan will validate query contents unless validate is set to false."
}

variable "monitor_thresholds" {
  type        = map
  default     = {}
  description = "(Block List, Max: 1) Alert thresholds of the monitor" 
}

variable "priority" {
  type        = number
  default     = 1
  description = "(Number) Integer from 1 (high) to 5 (low) indicating alert severity."

  validation {
    condition     = var.priority >= 1 && var.priority <= 5 && floor(var.priority) == var.priority
    error_message = "The max value is 5, where is five is most low priority"
  }
}

variable "require_full_window" {
  type          = bool
  default       = false
  description   = "(Boolean) A boolean indicating whether this monitor needs a full window of data before it's evaluated."
}

variable "restricted_roles" {
  type        = set(string)
  description = "(Set of String) A list of unique role identifiers to define which roles are allowed to edit the monitor. Editing a monitor includes any updates to the monitor configuration, monitor deletion, and muting of the monitor for any amount of time."
}

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