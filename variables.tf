variable "onesubscription_commitments_lookup" {
  description = <<EOT
Map of onesubscription_commitments_lookup, attributes below
Required:
    - compartment_id
    - subscribed_service_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = string
    subscribed_service_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

