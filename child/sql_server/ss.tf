resource "azurerm_mssql_server" "sql_server" {
  name                = var.sql_ser_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  version             = "12.0"
  # SQL authentication credentials
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_pssd

  public_network_access_enabled = false # disable public access

  minimum_tls_version = "1.2" # enforce TLS 1.2 - Devops best practice
}
