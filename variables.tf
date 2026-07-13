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
    content_storage_policy                   = optional(string)
    data_locale                              = optional(string)
    events_late_arrival_max_delay_in_seconds = optional(number)
    events_out_of_order_max_delay_in_seconds = optional(number)
    events_out_of_order_policy               = optional(string)
    output_error_policy                      = optional(string)
    sku_name                                 = optional(string)
    stream_analytics_cluster_id              = optional(string)
    streaming_units                          = optional(number)
    tags                                     = optional(map(string))
    type                                     = optional(string)
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    job_storage_account = optional(object({
      account_key         = optional(string)
      account_name        = string
      authentication_mode = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.stream_analytics_cluster_id == null || (length(v.stream_analytics_cluster_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.data_locale == null || (length(v.data_locale) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.events_late_arrival_max_delay_in_seconds == null || (v.events_late_arrival_max_delay_in_seconds >= -1 && v.events_late_arrival_max_delay_in_seconds <= 1814399)
      )
    ])
    error_message = "must be between -1 and 1814399"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.events_out_of_order_max_delay_in_seconds == null || (v.events_out_of_order_max_delay_in_seconds >= 0 && v.events_out_of_order_max_delay_in_seconds <= 599)
      )
    ])
    error_message = "must be between 0 and 599"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.streaming_units == null || (v.streaming_units >= 1 && v.streaming_units <= 120)
      )
    ])
    error_message = "must be between 1 and 120"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.job_storage_account == null || (length(v.job_storage_account.account_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.job_storage_account == null || (v.job_storage_account.account_key == null || (length(v.job_storage_account.account_key) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        length(v.transformation_query) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_jobs : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

