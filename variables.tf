variable "apigatewayv2_stages" {
  description = <<EOT
Map of apigatewayv2_stages, attributes below
Required:
    - api_id
    - name
Optional:
    - auto_deploy
    - client_certificate_id
    - deployment_id
    - description
    - region
    - stage_variables
    - tags
    - tags_all
    - access_log_settings (block):
        - destination_arn (required)
        - format (required)
    - default_route_settings (block):
        - data_trace_enabled (optional)
        - detailed_metrics_enabled (optional)
        - logging_level (optional)
        - throttling_burst_limit (optional)
        - throttling_rate_limit (optional)
    - route_settings (block):
        - data_trace_enabled (optional)
        - detailed_metrics_enabled (optional)
        - logging_level (optional)
        - route_key (required)
        - throttling_burst_limit (optional)
        - throttling_rate_limit (optional)
EOT

  type = map(object({
    api_id                = string
    name                  = string
    auto_deploy           = optional(bool)
    client_certificate_id = optional(string)
    deployment_id         = optional(string)
    description           = optional(string)
    region                = optional(string)
    stage_variables       = optional(map(string))
    tags                  = optional(map(string))
    tags_all              = optional(map(string))
    access_log_settings = optional(object({
      destination_arn = string
      format          = string
    }))
    default_route_settings = optional(object({
      data_trace_enabled       = optional(bool)
      detailed_metrics_enabled = optional(bool)
      logging_level            = optional(string)
      throttling_burst_limit   = optional(number)
      throttling_rate_limit    = optional(number)
    }))
    route_settings = optional(list(object({
      data_trace_enabled       = optional(bool)
      detailed_metrics_enabled = optional(bool)
      logging_level            = optional(string)
      route_key                = string
      throttling_burst_limit   = optional(number)
      throttling_rate_limit    = optional(number)
    })))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

