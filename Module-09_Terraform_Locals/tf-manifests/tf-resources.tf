# Description: This resource will create a new Resource Group
resource "azurerm_resource_group" "myrg" {
  #name = "${var.business_unit}-${var.environment}-${var.resoure_group_name}"
  name = local.rg_name
  location = var.resoure_group_location
  tags = local.common_tags
}

# Description: This resource will create a new Virtual Network
resource "azurerm_virtual_network" "myvnet" {
#resource "azurerm_virtual_network" "myvnet-new" {
  name                = local.vnet_name
  #name                = "${local.vnet_name}-2"
  address_space       = local.vnet_address_space
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  tags = local.common_tags 
}

