variable "servicebus_namespaces" {
  description = <<EOT
Map of servicebus_namespaces, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - capacity
    - local_auth_enabled
    - minimum_tls_version
    - premium_messaging_partitions
    - public_network_access_enabled
    - tags
    - customer_managed_key (block):
        - identity_id (required)
        - infrastructure_encryption_enabled (optional)
        - key_vault_key_id (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - network_rule_set (block):
        - default_action (optional)
        - ip_rules (optional)
        - network_rules (optional, block):
            - ignore_missing_vnet_service_endpoint (optional)
            - subnet_id (required)
        - public_network_access_enabled (optional)
        - trusted_services_allowed (optional)
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    sku                           = string
    capacity                      = optional(number)
    local_auth_enabled            = optional(bool)
    minimum_tls_version           = optional(string)
    premium_messaging_partitions  = optional(number)
    public_network_access_enabled = optional(bool)
    tags                          = optional(map(string))
    customer_managed_key = optional(object({
      identity_id                       = string
      infrastructure_encryption_enabled = optional(bool)
      key_vault_key_id                  = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    network_rule_set = optional(object({
      default_action = optional(string)
      ip_rules       = optional(set(string))
      network_rules = optional(list(object({
        ignore_missing_vnet_service_endpoint = optional(bool)
        subnet_id                            = string
      })))
      public_network_access_enabled = optional(bool)
      trusted_services_allowed      = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.servicebus_namespaces : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.servicebus_namespaces : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.servicebus_namespaces : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.servicebus_namespaces : (
        v.capacity == null || (contains([0, 1, 2, 4, 8, 16], v.capacity))
      )
    ])
    error_message = "must be one of: 0, 1, 2, 4, 8, 16"
  }
  validation {
    condition = alltrue([
      for k, v in var.servicebus_namespaces : (
        v.premium_messaging_partitions == null || (contains([0, 1, 2, 4], v.premium_messaging_partitions))
      )
    ])
    error_message = "must be one of: 0, 1, 2, 4"
  }
  validation {
    condition = alltrue([
      for k, v in var.servicebus_namespaces : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 20 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

