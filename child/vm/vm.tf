resource "azurerm_network_interface" "nic-del" {
  name                = var.nic_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.kuch_bhi_ip.id
  }
}

resource "azurerm_linux_virtual_machine" "vm-del" {
  name                            = var.vm_name
  resource_group_name             = var.rg_name
  location                        = var.rg_location
  size                            = var.vm_size
  admin_username                  = data.azurerm_key_vault_secret.username.value
  admin_password                  = data.azurerm_key_vault_secret.password.value
  disable_password_authentication = false

  network_interface_ids = [azurerm_network_interface.nic-del.id]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
