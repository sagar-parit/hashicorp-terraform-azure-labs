# Description: This resource will create a new Resource Group
resource "azurerm_resource_group" "nova_rg" {
  #name = "${var.business_unit}-${var.environment}-${var.resoure_group_name}"
  name     = local.rg_name
  location = var.resoure_group_location
  tags     = local.common_tags
}

# Description: This resource will create a new Virtual Network
resource "azurerm_virtual_network" "nova_vnet" {
  #resource "azurerm_virtual_network" "myvnet-new" {
  name = local.vnet_name
  #name                = "${local.vnet_name}-2"
  address_space       = local.vnet_address_space
  location            = azurerm_resource_group.nova_rg.location
  resource_group_name = azurerm_resource_group.nova_rg.name
  tags                = local.common_tags
}

resource "azurerm_subnet" "app_subnet" {
  name                 = "${var.subnet_name}-${count.index}"
  resource_group_name  = azurerm_resource_group.nova_rg.name
  virtual_network_name = azurerm_virtual_network.nova_vnet.name
  # address_prefixes     = [var.subnet_add_prefixes[count.index]]
  address_prefixes = [var.subnet_add_prefixes[count.index]]
  count            = 2
}

resource "azurerm_network_interface" "vm_nw_interfaces" {
  name                = "NIC-${count.index}"
  location            = azurerm_resource_group.nova_rg.location
  resource_group_name = azurerm_resource_group.nova_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = element(azurerm_subnet.app_subnet[*].id,count.index)
    private_ip_address_allocation = "Dynamic"
  }
  count = 2
}