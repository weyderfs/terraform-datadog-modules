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
| [datadog_service_level_objective.slo](https://registry.terraform.io/providers/hashicorp/datadog/latest/docs/resources/service_level_objective) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (String) A description of this service level objective. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (String) Name of Datadog service level objective | `string` | n/a | yes |
| <a name="input_query_denominator"></a> [query\_denominator](#input\_query\_denominator) | (String) The sum of the total events. | `string` | n/a | yes |
| <a name="input_query_numerator"></a> [query\_numerator](#input\_query\_numerator) | (String) The sum of the total events. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Set of String) A list of tags to associate with your monitor. This can help you categorize and filter monitors in the manage monitors page of the UI. Note: it's not currently possible to filter by these tags when querying via the API | `set(string)` | n/a | yes |
| <a name="input_thresholds"></a> [thresholds](#input\_thresholds) | (Block List, Min: 1) A list of thresholds and targets that define the service level objectives from the provided SLIs. | `list(any)` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | (String) The type of the service level objective. The mapping from these types to the types found in the Datadog Web UI can be found in the Datadog API documentation page. Valid values are metric, monitor. | `string` | `"metric"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The Datadog SLO name |
| <a name="output_type"></a> [type](#output\_type) | The Datadog SLO type |
<!-- END_TF_DOCS -->