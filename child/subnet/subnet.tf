
resource "azurerm_subnet" "sub-del" {
  name                 = var.sub_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.add_pref
}
