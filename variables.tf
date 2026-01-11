variable "stream_analytics_jobs" {
  description = <<EOT
Map of stream_analytics_jobs, attributes below
Required:
    - location
    - name
    - resource_group_name
    - transformation_query
Optional:
    - compatibility_level
    - content_storage_policy
    - data_locale
    - events_late_arrival_max_delay_in_seconds
    - events_out_of_order_max_delay_in_seconds
    - events_out_of_order_policy
    - output_error_policy
    - sku_name
    - stream_analytics_cluster_id
    - streaming_units
    - tags
    - type
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - job_storage_account (block):
        - account_key (optional)
        - account_name (required)
        - authentication_mode (optional)
EOT

  type = map(object({
    location                                 = string
    name                                     = string
    resource_group_name                      = string
    transformation_query                     = string
    compatibility_level                      = optional(string)
    content_storage_policy                   = optional(string, "SystemAccount")
    data_locale                              = optional(string, "en-US")
    events_late_arrival_max_delay_in_seconds = optional(number, 5)
    events_out_of_order_max_delay_in_seconds = optional(number, 0)
    events_out_of_order_policy               = optional(string, "Adjust")
    output_error_policy                      = optional(string, "Drop")
    sku_name                                 = optional(string, "Standard")
    stream_analytics_cluster_id              = optional(string)
    streaming_units                          = optional(number)
    tags                                     = optional(map(string))
    type                                     = optional(string, "Cloud")
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    job_storage_account = optional(object({
      account_key         = optional(string)
      account_name        = string
      authentication_mode = optional(string, "ConnectionString")
    }))
  }))
}

