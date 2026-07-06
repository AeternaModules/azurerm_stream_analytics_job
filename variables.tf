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
    content_storage_policy                   = optional(string) # Default: "SystemAccount"
    data_locale                              = optional(string) # Default: "en-US"
    events_late_arrival_max_delay_in_seconds = optional(number) # Default: 5
    events_out_of_order_max_delay_in_seconds = optional(number) # Default: 0
    events_out_of_order_policy               = optional(string) # Default: "Adjust"
    output_error_policy                      = optional(string) # Default: "Drop"
    sku_name                                 = optional(string) # Default: "Standard"
    stream_analytics_cluster_id              = optional(string)
    streaming_units                          = optional(number)
    tags                                     = optional(map(string))
    type                                     = optional(string) # Default: "Cloud"
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    job_storage_account = optional(object({
      account_key         = optional(string)
      account_name        = string
      authentication_mode = optional(string) # Default: "ConnectionString"
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
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_job's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: compatibility_level
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: events_out_of_order_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: output_error_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: content_storage_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: job_storage_account.authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: sku_name
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

