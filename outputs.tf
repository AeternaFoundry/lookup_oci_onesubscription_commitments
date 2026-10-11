output "onesubscription_commitments_lookup_id" {
  description = "Map of id values across all onesubscription_commitments_lookup, keyed the same as var.onesubscription_commitments_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_onesubscription_commitments.onesubscription_commitments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "onesubscription_commitments_lookup_commitments" {
  description = "Map of commitments values across all onesubscription_commitments_lookup, keyed the same as var.onesubscription_commitments_lookup except keys with no commitments are omitted"
  value       = { for k, v in data.oci_onesubscription_commitments.onesubscription_commitments_lookup : k => v.commitments if v.commitments != null && length(v.commitments) > 0 }
}
output "onesubscription_commitments_lookup_compartment_id" {
  description = "Map of compartment_id values across all onesubscription_commitments_lookup, keyed the same as var.onesubscription_commitments_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_onesubscription_commitments.onesubscription_commitments_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "onesubscription_commitments_lookup_filter" {
  description = "Map of filter values across all onesubscription_commitments_lookup, keyed the same as var.onesubscription_commitments_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_onesubscription_commitments.onesubscription_commitments_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "onesubscription_commitments_lookup_subscribed_service_id" {
  description = "Map of subscribed_service_id values across all onesubscription_commitments_lookup, keyed the same as var.onesubscription_commitments_lookup except keys with no subscribed_service_id are omitted"
  value       = { for k, v in data.oci_onesubscription_commitments.onesubscription_commitments_lookup : k => v.subscribed_service_id if v.subscribed_service_id != null && length(v.subscribed_service_id) > 0 }
}

