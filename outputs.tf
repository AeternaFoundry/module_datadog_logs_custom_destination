output "logs_custom_destinations_id" {
  description = "Map of id values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no id are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_custom_destinations_elasticsearch_destination" {
  description = "Map of elasticsearch_destination values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no elasticsearch_destination are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.elasticsearch_destination if v.elasticsearch_destination != null && length(v.elasticsearch_destination) > 0 }
  sensitive   = true
}
output "logs_custom_destinations_enabled" {
  description = "Map of enabled values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no enabled are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.enabled if v.enabled != null }
}
output "logs_custom_destinations_forward_tags" {
  description = "Map of forward_tags values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no forward_tags are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.forward_tags if v.forward_tags != null }
}
output "logs_custom_destinations_forward_tags_restriction_list" {
  description = "Map of forward_tags_restriction_list values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no forward_tags_restriction_list are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.forward_tags_restriction_list if v.forward_tags_restriction_list != null && length(v.forward_tags_restriction_list) > 0 }
}
output "logs_custom_destinations_forward_tags_restriction_list_type" {
  description = "Map of forward_tags_restriction_list_type values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no forward_tags_restriction_list_type are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.forward_tags_restriction_list_type if v.forward_tags_restriction_list_type != null && length(v.forward_tags_restriction_list_type) > 0 }
}
output "logs_custom_destinations_http_destination" {
  description = "Map of http_destination values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no http_destination are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.http_destination if v.http_destination != null && length(v.http_destination) > 0 }
  sensitive   = true
}
output "logs_custom_destinations_microsoft_sentinel_destination" {
  description = "Map of microsoft_sentinel_destination values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no microsoft_sentinel_destination are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.microsoft_sentinel_destination if v.microsoft_sentinel_destination != null && length(v.microsoft_sentinel_destination) > 0 }
}
output "logs_custom_destinations_name" {
  description = "Map of name values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no name are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "logs_custom_destinations_query" {
  description = "Map of query values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no query are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.query if v.query != null && length(v.query) > 0 }
}
output "logs_custom_destinations_splunk_destination" {
  description = "Map of splunk_destination values across all logs_custom_destinations, keyed the same as var.logs_custom_destinations except keys with no splunk_destination are omitted"
  value       = { for k, v in datadog_logs_custom_destination.logs_custom_destinations : k => v.splunk_destination if v.splunk_destination != null && length(v.splunk_destination) > 0 }
  sensitive   = true
}

