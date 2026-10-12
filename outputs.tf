output "keymgmt_keys_deletion_allowed" {
  description = "Map of deletion_allowed values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no deletion_allowed are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.deletion_allowed if v.deletion_allowed != null }
}
output "keymgmt_keys_latest_version" {
  description = "Map of latest_version values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no latest_version are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.latest_version if v.latest_version != null }
}
output "keymgmt_keys_min_enabled_version" {
  description = "Map of min_enabled_version values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no min_enabled_version are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.min_enabled_version if v.min_enabled_version != null }
}
output "keymgmt_keys_mount" {
  description = "Map of mount values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no mount are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "keymgmt_keys_name" {
  description = "Map of name values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no name are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "keymgmt_keys_namespace" {
  description = "Map of namespace values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no namespace are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "keymgmt_keys_replica_regions" {
  description = "Map of replica_regions values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no replica_regions are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.replica_regions if v.replica_regions != null && length(v.replica_regions) > 0 }
}
output "keymgmt_keys_type" {
  description = "Map of type values across all keymgmt_keys, keyed the same as var.keymgmt_keys except keys with no type are omitted"
  value       = { for k, v in vault_keymgmt_key.keymgmt_keys : k => v.type if v.type != null && length(v.type) > 0 }
}

