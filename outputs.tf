output "virtual_network_id" {
  value = azurerm_virtual_network.az-vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.az-subnet.id
}
