

resource "azurerm_key_vault_secret" "password" {
  name         = "password"
  value        = var.password
  key_vault_id = data.azurerm_key_vault.kv.id

  # Added to follow Devops best practices
  content_type    = "text/plain"
  expiration_date = timeadd(timestamp(), "8760h") # 1 year expiry
}

