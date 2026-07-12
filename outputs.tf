output "servicebus_namespaces_id" {
  description = "Map of id values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.id }
}
output "servicebus_namespaces_capacity" {
  description = "Map of capacity values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.capacity }
}
output "servicebus_namespaces_customer_managed_key" {
  description = "Map of customer_managed_key values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.customer_managed_key }
}
output "servicebus_namespaces_default_primary_connection_string" {
  description = "Map of default_primary_connection_string values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_primary_connection_string }
  sensitive   = true
}
output "servicebus_namespaces_default_primary_key" {
  description = "Map of default_primary_key values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_primary_key }
  sensitive   = true
}
output "servicebus_namespaces_default_secondary_connection_string" {
  description = "Map of default_secondary_connection_string values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_secondary_connection_string }
  sensitive   = true
}
output "servicebus_namespaces_default_secondary_key" {
  description = "Map of default_secondary_key values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.default_secondary_key }
  sensitive   = true
}
output "servicebus_namespaces_endpoint" {
  description = "Map of endpoint values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.endpoint }
}
output "servicebus_namespaces_identity" {
  description = "Map of identity values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.identity }
}
output "servicebus_namespaces_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.local_auth_enabled }
}
output "servicebus_namespaces_location" {
  description = "Map of location values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.location }
}
output "servicebus_namespaces_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.minimum_tls_version }
}
output "servicebus_namespaces_name" {
  description = "Map of name values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.name }
}
output "servicebus_namespaces_network_rule_set" {
  description = "Map of network_rule_set values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.network_rule_set }
}
output "servicebus_namespaces_premium_messaging_partitions" {
  description = "Map of premium_messaging_partitions values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.premium_messaging_partitions }
}
output "servicebus_namespaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.public_network_access_enabled }
}
output "servicebus_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.resource_group_name }
}
output "servicebus_namespaces_sku" {
  description = "Map of sku values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.sku }
}
output "servicebus_namespaces_tags" {
  description = "Map of tags values across all servicebus_namespaces, keyed the same as var.servicebus_namespaces"
  value       = { for k, v in azurerm_servicebus_namespace.servicebus_namespaces : k => v.tags }
}

