

resource "azurerm_key_vault_secret" "password" {
  name         = "password"
  value        = var.password
  key_vault_id = data.azurerm_key_vault.kv.id
}

