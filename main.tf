resource "azurerm_virtual_network" "az-vnet" {
  name                = var.name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_subnet" "az-subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.az-vnet.name
  address_prefixes     = var.subnet_prefixes

  tags = var.tags
}
