<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_datadog"></a> [datadog](#provider\_datadog) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [datadog_monitor.dm](https://registry.terraform.io/providers/hashicorp/datadog/latest/docs/resources/monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_include_tags"></a> [include\_tags](#input\_include\_tags) | (Boolean) A boolean indicating whether notifications from this monitor automatically insert its triggering tags into the title. Defaults to true | `bool` | `true` | no |
| <a name="input_message"></a> [message](#input\_message) | (String) A message to include with notifications for this monitor. | `string` | n/a | yes |
| <a name="input_monitor_threshold_windows"></a> [monitor\_threshold\_windows](#input\_monitor\_threshold\_windows) | (Block List, Max: 1) A mapping containing recovery\_window and trigger\_window values, e.g. last\_15m . Can only be used for, and are required for, anomaly monitors | `list(any)` | `[]` | no |
| <a name="input_monitor_thresholds"></a> [monitor\_thresholds](#input\_monitor\_thresholds) | (List Of String) The monitor CRITICAL and RECOVERY threshold. Must be a number. | `list(any)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (String) Name of Datadog monitor. | `string` | n/a | yes |
| <a name="input_new_group_delay"></a> [new\_group\_delay](#input\_new\_group\_delay) | (Number) The time (in seconds) to skip evaluations for new groups. | `number` | `null` | no |
| <a name="input_notify_audit"></a> [notify\_audit](#input\_notify\_audit) | (Boolean) A boolean indicating whether tagged users will be notified on changes to this monitor. | `bool` | `true` | no |
| <a name="input_on_missing_data"></a> [on\_missing\_data](#input\_on\_missing\_data) | (String) Controls how groups or monitors are treated if an evaluation does not return any data points. The default option results in different behavior depending on the monitor query type. | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | (Number) Integer from 1 (high) to 5 (low) indicating alert severity. | `number` | `1` | no |
| <a name="input_query"></a> [query](#input\_query) | (String) The monitor query to notify on. Note this is not the same query you see in the UI and the syntax is different depending on the monitor type, please see the API Reference for details. terraform plan will validate query contents unless validate is set to false. | `string` | n/a | yes |
| <a name="input_require_full_window"></a> [require\_full\_window](#input\_require\_full\_window) | (Boolean) A boolean indicating whether this monitor needs a full window of data before it's evaluated. | `bool` | `false` | no |
| <a name="input_restricted_roles"></a> [restricted\_roles](#input\_restricted\_roles) | (Set of String) A list of unique role identifiers to define which roles are allowed to edit the monitor. Editing a monitor includes any updates to the monitor configuration, monitor deletion, and muting of the monitor for any amount of time. | `set(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Set of String) A list of tags to associate with your monitor. This can help you categorize and filter monitors in the manage monitors page of the UI. Note: it's not currently possible to filter by these tags when querying via the API | `set(string)` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | (String) The type of the monitor. The mapping from these types to the types found in the Datadog Web UI can be found in the Datadog API documentation page | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The Datadog monitor name |
| <a name="output_type"></a> [type](#output\_type) | The Datadog monitor type |
<!-- END_TF_DOCS -->