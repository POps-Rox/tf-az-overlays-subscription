# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

###############
# Outputs    ##
###############

# Add outputs for the resource
output "alias_sub_id" {
  value       = var.create_subscription_alias ? try(azurerm_subscription.alias_sub[0].id, null) : null
  description = "The ID of the subscription alias"
}

output "enrollment_sub_id" {
  value       = var.create_enrollment_subscription ? try(azurerm_subscription.enrollment_sub[0].id, null) : null
  description = "The ID of the subscription within an Enterprise Agreement enrollment"
}

output "mca_sub_id" {
  value       = var.create_mca_subscription ? try(azurerm_subscription.mca_sub[0].id, null) : null
  description = "The ID of the subscription within an Microsoft Customer Account"
}

output "mpa_sub_id" {
  value       = var.create_mpa_subscription ? try(azurerm_subscription.mpa_sub[0].id, null) : null
  description = "The ID of the subscription within an Microsoft PArtner Account"
}
