<!-- BEGIN_TF_DOCS -->
# Datadog Monitor Module

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | n/a |


## Resources

| Name | Type |
|------|------|
| [datadog_monitor.dm](https://registry.terraform.io/providers/hashicorp/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_escalation_message"></a> [escalation\_message](#input\_escalation\_message) | (String) A message to include with a re-notification. Supports the @username notification allowed elsewhere. | `string` | n/a | yes |
| <a name="input_include_tags"></a> [include\_tags](#input\_include\_tags) | (Boolean) A boolean indicating whether notifications from this monitor automatically insert its triggering tags into the title. Defaults to true | `bool` | `true` | no |
| <a name="input_message"></a> [message](#input\_message) | (String) A message to include with notifications for this monitor. | `string` | n/a | yes |
| <a name="input_monitor_thresholds"></a> [monitor\_thresholds](#input\_monitor\_thresholds) | (Block List, Max: 1) Alert thresholds of the monitor | `list` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (String) Name of Datadog monitor. | `string` | n/a | yes |
| <a name="input_query"></a> [query](#input\_query) | (String) The monitor query to notify on. Note this is not the same query you see in the UI and the syntax is different depending on the monitor type, please see the API Reference for details. terraform plan will validate query contents unless validate is set to false. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Set of String) A list of tags to associate with your monitor. This can help you categorize and filter monitors in the manage monitors page of the UI. Note: it's not currently possible to filter by these tags when querying via the API | `map(list)` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | (String) The type of the monitor. The mapping from these types to the types found in the Datadog Web UI can be found in the Datadog API documentation page | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The Datadog monitor name |
| <a name="output_type"></a> [type](#output\_type) | The Datadog monitor name |
<!-- END_TF_DOCS -->