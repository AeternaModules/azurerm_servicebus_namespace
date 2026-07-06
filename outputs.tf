output "servicebus_namespaces" {
  description = "All servicebus_namespace resources"
  value       = azurerm_servicebus_namespace.servicebus_namespaces
  sensitive   = true
}
output "servicebus_namespaces_capacity" {
  description = "List of capacity values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.capacity]
}
output "servicebus_namespaces_customer_managed_key" {
  description = "List of customer_managed_key values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.customer_managed_key]
}
output "servicebus_namespaces_default_primary_connection_string" {
  description = "List of default_primary_connection_string values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.default_primary_connection_string]
  sensitive   = true
}
output "servicebus_namespaces_default_primary_key" {
  description = "List of default_primary_key values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.default_primary_key]
  sensitive   = true
}
output "servicebus_namespaces_default_secondary_connection_string" {
  description = "List of default_secondary_connection_string values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.default_secondary_connection_string]
  sensitive   = true
}
output "servicebus_namespaces_default_secondary_key" {
  description = "List of default_secondary_key values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.default_secondary_key]
  sensitive   = true
}
output "servicebus_namespaces_endpoint" {
  description = "List of endpoint values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.endpoint]
}
output "servicebus_namespaces_identity" {
  description = "List of identity values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.identity]
}
output "servicebus_namespaces_local_auth_enabled" {
  description = "List of local_auth_enabled values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.local_auth_enabled]
}
output "servicebus_namespaces_location" {
  description = "List of location values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.location]
}
output "servicebus_namespaces_minimum_tls_version" {
  description = "List of minimum_tls_version values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.minimum_tls_version]
}
output "servicebus_namespaces_name" {
  description = "List of name values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.name]
}
output "servicebus_namespaces_network_rule_set" {
  description = "List of network_rule_set values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.network_rule_set]
}
output "servicebus_namespaces_premium_messaging_partitions" {
  description = "List of premium_messaging_partitions values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.premium_messaging_partitions]
}
output "servicebus_namespaces_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.public_network_access_enabled]
}
output "servicebus_namespaces_resource_group_name" {
  description = "List of resource_group_name values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.resource_group_name]
}
output "servicebus_namespaces_sku" {
  description = "List of sku values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.sku]
}
output "servicebus_namespaces_tags" {
  description = "List of tags values across all servicebus_namespaces"
  value       = [for k, v in azurerm_servicebus_namespace.servicebus_namespaces : v.tags]
}

