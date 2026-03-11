# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.


########################
# MCA Configuration   ##
########################

# NOTE: billing_account_name is defined in variables.enrollment.account.tf
# and shared between enrollment and MCA configurations.

variable "create_mca_subscription" {
  description = "Create a subscription within an Microsoft Customer Account."
  type        = bool
  default     = false
}


variable "billing_profile_name" {
  description = "The name of the billing profile."
  type        = string
  default     = null
}

variable "invoice_section_name" {
  description = "The name of the invoice section."
  type        = string
  default     = null
}


