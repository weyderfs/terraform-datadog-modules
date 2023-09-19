variable "name" {
  type        = string
  description = "(String) Name of Datadog service level objective"
}
variable "type" {
  type        = string
  default     = "metric"
  description = "(String) The type of the service level objective. The mapping from these types to the types found in the Datadog Web UI can be found in the Datadog API documentation page. Valid values are metric, monitor."
}
variable "description" {
  type        = string
  default     = null
  description = "(String) A description of this service level objective."
}
variable "query_numerator" {
  type        = string
  description = "(String) The sum of the total events."
}
variable "query_denominator" {
  type        = string
  description = "(String) The sum of the total events."
}

variable "thresholds" {
  type        = list(any)
  description = "(Block List, Min: 1) A list of thresholds and targets that define the service level objectives from the provided SLIs."
}

variable "tags" {
  type        = set(string)
  description = "(Set of String) A list of tags to associate with your monitor. This can help you categorize and filter monitors in the manage monitors page of the UI. Note: it's not currently possible to filter by these tags when querying via the API"
}