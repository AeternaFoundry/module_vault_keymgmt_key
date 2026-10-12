resource "vault_keymgmt_key" "keymgmt_keys" {
  for_each = var.keymgmt_keys

  mount               = each.value.mount
  name                = each.value.name
  deletion_allowed    = each.value.deletion_allowed
  min_enabled_version = each.value.min_enabled_version
  namespace           = each.value.namespace
  replica_regions     = each.value.replica_regions
  type                = each.value.type
}

