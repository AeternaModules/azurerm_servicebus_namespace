output "servicebus_namespaces_id" {
  description = "Map of id values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "servicebus_namespaces_capacity" {
  description = "Map of capacity values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.capacity if v.capacity != null }
}
output "servicebus_namespaces_customer_managed_key" {
  description = "Map of customer_managed_key values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.customer_managed_key if v.customer_managed_key != null && length(v.customer_managed_key) > 0 }
}
output "servicebus_namespaces_default_primary_connection_string" {
  description = "Map of default_primary_connection_string values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_primary_connection_string if v.default_primary_connection_string != null && length(v.default_primary_connection_string) > 0 }
  sensitive   = true
}
output "servicebus_namespaces_default_primary_key" {
  description = "Map of default_primary_key values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_primary_key if v.default_primary_key != null && length(v.default_primary_key) > 0 }
  sensitive   = true
}
output "servicebus_namespaces_default_secondary_connection_string" {
  description = "Map of default_secondary_connection_string values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_secondary_connection_string if v.default_secondary_connection_string != null && length(v.default_secondary_connection_string) > 0 }
  sensitive   = true
}
output "servicebus_namespaces_default_secondary_key" {
  description = "Map of default_secondary_key values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_secondary_key if v.default_secondary_key != null && length(v.default_secondary_key) > 0 }
  sensitive   = true
}
output "servicebus_namespaces_endpoint" {
  description = "Map of endpoint values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "servicebus_namespaces_identity" {
  description = "Map of identity values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "servicebus_namespaces_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.local_auth_enabled if v.local_auth_enabled != null }
}
output "servicebus_namespaces_location" {
  description = "Map of location values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "servicebus_namespaces_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.minimum_tls_version if v.minimum_tls_version != null && length(v.minimum_tls_version) > 0 }
}
output "servicebus_namespaces_name" {
  description = "Map of name values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "servicebus_namespaces_network_rule_set" {
  description = "Map of network_rule_set values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.network_rule_set if v.network_rule_set != null && length(v.network_rule_set) > 0 }
}
output "servicebus_namespaces_premium_messaging_partitions" {
  description = "Map of premium_messaging_partitions values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.premium_messaging_partitions if v.premium_messaging_partitions != null }
}
output "servicebus_namespaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "servicebus_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "servicebus_namespaces_sku" {
  description = "Map of sku values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "servicebus_namespaces_tags" {
  description = "Map of tags values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

