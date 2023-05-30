resource "azurerm_virtual_network" "vnet" {
  name                = "infra-network"
  address_space       = ["12.0.0.0/16"]
  location            =var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "az_subnet" {
  name                 = "public1"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["12.0.0.0/24"]
}

