subnet_map = {
  sub1 = {
    resource_group_name = "rg-vnet"
    subnet_name         = "subnet1"
    address_prefixes    = ["10.0.1.0/24"]
    vnet_name           = "example-vnet"
    address_space       = ["10.0.0.0/16"]
    location            = "centralindia"
  }

  sub2 = {
    resource_group_name = "rg-vnet2"
    subnet_name         = "subnet2"
    address_prefixes    = ["192.0.2.0/24"]
    vnet_name           = "example-vnet"
    address_space       = ["192.0.0.0/16"]
    location            = "centralindia"
  }

}
