resource "azurerm_resource_group" "example" {
  for_each = var.rg_name.name
    name     = each.key
  location = var.rg_location.location
}