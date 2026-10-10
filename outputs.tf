output "apigatewayv2_stages_id" {
  description = "Map of id values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigatewayv2_stages_access_log_settings" {
  description = "Map of access_log_settings values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => one(v.access_log_settings) if v.access_log_settings != null && length(v.access_log_settings) > 0 }
}
output "apigatewayv2_stages_api_id" {
  description = "Map of api_id values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "apigatewayv2_stages_arn" {
  description = "Map of arn values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "apigatewayv2_stages_auto_deploy" {
  description = "Map of auto_deploy values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.auto_deploy if v.auto_deploy != null }
}
output "apigatewayv2_stages_client_certificate_id" {
  description = "Map of client_certificate_id values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.client_certificate_id if v.client_certificate_id != null && length(v.client_certificate_id) > 0 }
}
output "apigatewayv2_stages_default_route_settings" {
  description = "Map of default_route_settings values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => one(v.default_route_settings) if v.default_route_settings != null && length(v.default_route_settings) > 0 }
}
output "apigatewayv2_stages_deployment_id" {
  description = "Map of deployment_id values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.deployment_id if v.deployment_id != null && length(v.deployment_id) > 0 }
}
output "apigatewayv2_stages_description" {
  description = "Map of description values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigatewayv2_stages_execution_arn" {
  description = "Map of execution_arn values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.execution_arn if v.execution_arn != null && length(v.execution_arn) > 0 }
}
output "apigatewayv2_stages_invoke_url" {
  description = "Map of invoke_url values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.invoke_url if v.invoke_url != null && length(v.invoke_url) > 0 }
}
output "apigatewayv2_stages_name" {
  description = "Map of name values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigatewayv2_stages_region" {
  description = "Map of region values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.region if v.region != null && length(v.region) > 0 }
}
output "apigatewayv2_stages_route_settings" {
  description = "Map of route_settings values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.route_settings if v.route_settings != null && length(v.route_settings) > 0 }
}
output "apigatewayv2_stages_stage_variables" {
  description = "Map of stage_variables values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.stage_variables if v.stage_variables != null && length(v.stage_variables) > 0 }
}
output "apigatewayv2_stages_tags" {
  description = "Map of tags values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "apigatewayv2_stages_tags_all" {
  description = "Map of tags_all values across all apigatewayv2_stages, keyed the same as var.apigatewayv2_stages"
  value       = { for k, v in aws_apigatewayv2_stage.apigatewayv2_stages : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

