output "stream_analytics_jobs" {
  description = "All stream_analytics_job resources"
  value       = azurerm_stream_analytics_job.stream_analytics_jobs
  sensitive   = true
}
output "stream_analytics_jobs_compatibility_level" {
  description = "List of compatibility_level values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.compatibility_level]
}
output "stream_analytics_jobs_content_storage_policy" {
  description = "List of content_storage_policy values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.content_storage_policy]
}
output "stream_analytics_jobs_data_locale" {
  description = "List of data_locale values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.data_locale]
}
output "stream_analytics_jobs_events_late_arrival_max_delay_in_seconds" {
  description = "List of events_late_arrival_max_delay_in_seconds values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.events_late_arrival_max_delay_in_seconds]
}
output "stream_analytics_jobs_events_out_of_order_max_delay_in_seconds" {
  description = "List of events_out_of_order_max_delay_in_seconds values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.events_out_of_order_max_delay_in_seconds]
}
output "stream_analytics_jobs_events_out_of_order_policy" {
  description = "List of events_out_of_order_policy values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.events_out_of_order_policy]
}
output "stream_analytics_jobs_identity" {
  description = "List of identity values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.identity]
}
output "stream_analytics_jobs_job_id" {
  description = "List of job_id values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.job_id]
}
output "stream_analytics_jobs_job_storage_account" {
  description = "List of job_storage_account values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.job_storage_account]
  sensitive   = true
}
output "stream_analytics_jobs_location" {
  description = "List of location values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.location]
}
output "stream_analytics_jobs_name" {
  description = "List of name values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.name]
}
output "stream_analytics_jobs_output_error_policy" {
  description = "List of output_error_policy values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.output_error_policy]
}
output "stream_analytics_jobs_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.resource_group_name]
}
output "stream_analytics_jobs_sku_name" {
  description = "List of sku_name values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.sku_name]
}
output "stream_analytics_jobs_stream_analytics_cluster_id" {
  description = "List of stream_analytics_cluster_id values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.stream_analytics_cluster_id]
}
output "stream_analytics_jobs_streaming_units" {
  description = "List of streaming_units values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.streaming_units]
}
output "stream_analytics_jobs_tags" {
  description = "List of tags values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.tags]
}
output "stream_analytics_jobs_transformation_query" {
  description = "List of transformation_query values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.transformation_query]
}
output "stream_analytics_jobs_type" {
  description = "List of type values across all stream_analytics_jobs"
  value       = [for k, v in azurerm_stream_analytics_job.stream_analytics_jobs : v.type]
}

