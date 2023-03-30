# Local Values Block

locals {
  # Use-case-1: Shorten the names for more readability
  rg_name = "${var.business_unit}-${var.env_type}-${var.resoure_group_name}"
  vnet_name = "${var.business_unit}-${var.env_type}-${var.virtual_network_name}"

  # Use-case-2: Common tags to be assigned to all resources
  owner = "K Bindesh"
  common_tags = {
    Environment = var.env_type
    Owner   = local.owner
  }
  # Use-case-3: Conditional values to be assigned
  vnet_address_space = (var.env_type == "DEV" ? var.vnet_address_space_dev : var.vnet_address_space_all)
}