variable "sql_ser_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group where the SQL Server will be created."
  type        = string
}

variable "rg_location" {
  description = "The Azure region where the SQL Server will be created."
  type        = string
}

variable "admin_login" {
  description = "The administrator login for the SQL Server."
  type        = string
}

variable "admin_pssd" {
  description = "The password for the administrator login."
  type        = string
  sensitive   = true   # pssd will not be printed in console
}