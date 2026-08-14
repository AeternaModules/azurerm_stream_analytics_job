output "stream_analytics_jobs_id" {
  description = "Map of id values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_jobs_compatibility_level" {
  description = "Map of compatibility_level values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.compatibility_level if v.compatibility_level != null && length(v.compatibility_level) > 0 }
}
output "stream_analytics_jobs_content_storage_policy" {
  description = "Map of content_storage_policy values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.content_storage_policy if v.content_storage_policy != null && length(v.content_storage_policy) > 0 }
}
output "stream_analytics_jobs_data_locale" {
  description = "Map of data_locale values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.data_locale if v.data_locale != null && length(v.data_locale) > 0 }
}
output "stream_analytics_jobs_events_late_arrival_max_delay_in_seconds" {
  description = "Map of events_late_arrival_max_delay_in_seconds values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.events_late_arrival_max_delay_in_seconds if v.events_late_arrival_max_delay_in_seconds != null }
}
output "stream_analytics_jobs_events_out_of_order_max_delay_in_seconds" {
  description = "Map of events_out_of_order_max_delay_in_seconds values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.events_out_of_order_max_delay_in_seconds if v.events_out_of_order_max_delay_in_seconds != null }
}
output "stream_analytics_jobs_events_out_of_order_policy" {
  description = "Map of events_out_of_order_policy values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.events_out_of_order_policy if v.events_out_of_order_policy != null && length(v.events_out_of_order_policy) > 0 }
}
output "stream_analytics_jobs_identity" {
  description = "Map of identity values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "stream_analytics_jobs_job_id" {
  description = "Map of job_id values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.job_id if v.job_id != null && length(v.job_id) > 0 }
}
output "stream_analytics_jobs_job_storage_account" {
  description = "Map of job_storage_account values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => one(v.job_storage_account) if v.job_storage_account != null && length(v.job_storage_account) > 0 }
  sensitive   = true
}
output "stream_analytics_jobs_location" {
  description = "Map of location values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "stream_analytics_jobs_name" {
  description = "Map of name values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_jobs_output_error_policy" {
  description = "Map of output_error_policy values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.output_error_policy if v.output_error_policy != null && length(v.output_error_policy) > 0 }
}
output "stream_analytics_jobs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_jobs_sku_name" {
  description = "Map of sku_name values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "stream_analytics_jobs_stream_analytics_cluster_id" {
  description = "Map of stream_analytics_cluster_id values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.stream_analytics_cluster_id if v.stream_analytics_cluster_id != null && length(v.stream_analytics_cluster_id) > 0 }
}
output "stream_analytics_jobs_streaming_units" {
  description = "Map of streaming_units values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.streaming_units if v.streaming_units != null }
}
output "stream_analytics_jobs_tags" {
  description = "Map of tags values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "stream_analytics_jobs_transformation_query" {
  description = "Map of transformation_query values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.transformation_query if v.transformation_query != null && length(v.transformation_query) > 0 }
}
output "stream_analytics_jobs_type" {
  description = "Map of type values across all stream_analytics_jobs, keyed the same as var.stream_analytics_jobs"
  value       = { for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : k => v.type if v.type != null && length(v.type) > 0 }
}

