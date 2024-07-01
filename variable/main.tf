resource "azurerm_resource_group" "example" {
  for_each = var.rg_map
    name     = each.value.name
  location = each.value.location
}

# resource "azurerm_resource_group" "example" {
#   for_each = toset(var.rg2.name)
#     name     = each.key
#   location = var.rg2.location
# }
