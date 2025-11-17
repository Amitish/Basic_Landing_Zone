resource "azurerm_key_vault_secret" "username" {
  name         = "username"
  value        = var.username
  key_vault_id = data.azurerm_key_vault.kv.id
}

