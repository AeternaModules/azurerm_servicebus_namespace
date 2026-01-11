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
    capacity                      = optional(number, 0)
    local_auth_enabled            = optional(bool, true)
    minimum_tls_version           = optional(string, "1.2")
    premium_messaging_partitions  = optional(number, 0)
    public_network_access_enabled = optional(bool, true)
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
      default_action = optional(string, "Allow")
      ip_rules       = optional(set(string))
      network_rules = optional(object({
        ignore_missing_vnet_service_endpoint = optional(bool, false)
        subnet_id                            = string
      }))
      public_network_access_enabled = optional(bool, true)
      trusted_services_allowed      = optional(bool, false)
    }))
  }))
}

