resource "azurerm_resource_group" "example" {
  for_each = var.subnet_map
  name     = each.value.resource_group_name
  location = each.value.location
}

resource "azurerm_virtual_network" "example" {
    depends_on = [ azurerm_resource_group.example ]
  for_each            = var.subnet_map
  name                = each.value.vnet_name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_subnet" "example" {
    depends_on = [ azurerm_virtual_network.example ]
  for_each             = var.subnet_map
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}