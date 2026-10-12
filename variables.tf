variable "keymgmt_keys" {
  description = <<EOT
Map of keymgmt_keys, attributes below
Required:
    - mount
    - name
Optional:
    - deletion_allowed
    - min_enabled_version
    - namespace
    - replica_regions
    - type
EOT

  type = map(object({
    mount               = string
    name                = string
    deletion_allowed    = optional(bool)
    min_enabled_version = optional(number)
    namespace           = optional(string)
    replica_regions     = optional(set(string))
    type                = optional(string)
  }))
}

