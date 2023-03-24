variable "rg_object_list" {
    type = list(object({
        name = string
        prefix = string
        protocol = string
        location = string
    }))
    default = [ {
      name = "App01-RG"
      prefix = "10.0.1.0/24"
      protocol = "tcp"
      location = "eastus"
    }, 
    {
      name = "App02-RG"
      prefix = "10.0.2.0/24"
      protocol = "tcp"
      location = "eastus"
    }]
}

resource "azurerm_resource_group" "myrg" {
  for_each = {
    for index, rg in var.rg_object_list:
      rg.name => rg
  }
  name = each.value.name
  location = each.value.location
}