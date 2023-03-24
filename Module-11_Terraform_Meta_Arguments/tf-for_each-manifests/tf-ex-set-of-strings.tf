variable "rg_name_list" {
  type = list(string)
  default = ["eastus", "westus", "westus2"]
}

resource "azurerm_resource_group" "set_rgs" {
    for_each = toset(var.rg_name_list)
    name = "Nova-${each.value}-RG"
    location = each.value
}