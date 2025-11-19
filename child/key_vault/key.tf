data "azurerm_client_config" "current" {} # very imortant to get tenant and object ids  

resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = var.rg_location
  resource_group_name         = var.rg_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true # Devops best practice

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get", "Set", "list"
    ]

    storage_permissions = [
      "Get",
    ]
  }
}


# If in case u want to assign RBAC role to the user u can inculde this block . . 

# resource "azurerm_role_assignment" "key_vault_admin" {
#   principal_id         = var.user_object_id  # Replace with actual object ID of the user
#   role_definition_name = "Key Vault Administrator"
#   scope                = azurerm_key_vault.kv.id
# }




