data "oci_onesubscription_commitments" "onesubscription_commitments_lookup" {
  for_each = var.onesubscription_commitments_lookup

  compartment_id        = each.value.compartment_id
  subscribed_service_id = each.value.subscribed_service_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

