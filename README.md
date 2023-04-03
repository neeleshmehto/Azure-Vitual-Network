# Virtual Network Terraform Module

This Terraform module creates a virtual network and a subnet in Microsoft Azure.

## Usage

```hcl
module "virtual_network" {
  source              = "path/to/module"
  name                = "my-virtual-network"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = "my-resource-group"
  subnet_name         = "my-subnet"
  subnet_prefixes     = ["10.0.1.0/24"]
  tags = {
    environment = "dev"
  }
}

output "virtual_network_id" {
  value = module.virtual_network.virtual_network_id
}

output "subnet_id" {
  value = module.virtual_network.subnet_id
}


