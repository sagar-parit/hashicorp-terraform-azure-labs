provider "azurerm" {
  features {
    
  }
}

variable "rg_name_location_map" {
  type = map(string)
  default = {
    WebApp01_RG = "eastus"
    WebApp02_RG = "westus"
    WebApp03_RG = "westus2"
    WebApp04_RG = "eastus2"
  }
}

resource "azurerm_resource_group" "app_rgs" {
  for_each = var.rg_name_location_map
  name = each.key
  location = each.value
}