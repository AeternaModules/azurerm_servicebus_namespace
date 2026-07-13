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
  # --- Unconfirmed validation candidates, derived from azurerm_servicebus_namespace's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.NamespaceName] !ok
  # path: name
  #   source:    [from validate.NamespaceName] !matched
  # path: name
  #   source:    [from validate.NamespaceName] strings.HasSuffix(v, illegalSuffix)
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
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
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: capacity
  #   source:    validation.IntInSlice(...) - no translation rule yet, add one
  # path: premium_messaging_partitions
  #   source:    validation.IntInSlice(...) - no translation rule yet, add one
  # path: customer_managed_key.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: customer_managed_key.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: customer_managed_key.identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: customer_managed_key.identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: minimum_tls_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_rule_set.default_action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_rule_set.network_rules.subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: network_rule_set.network_rules.subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
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

