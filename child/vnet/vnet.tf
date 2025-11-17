
resource "azurerm_virtual_network" "vnet-del" {
  name                = var.vnet_name
  address_space       = var.add_space
  location            = var.rg_location
  resource_group_name = var.rg_name
}
