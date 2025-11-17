module "rgs" {
  source      = "../../child/rg"
  rg_name     = "titli-rg"
  rg_location = "Central India"
}

module "vnets" {
  depends_on  = [module.rgs]
  source      = "../../child/vnet"
  rg_name     = "titli-rg"
  rg_location = "Central India"
  vnet_name   = "titli-vnet"
  add_space   = ["10.0.0.0/20"] # 2 ki power 32 minus 20 
}

module "front_subs" {
  depends_on = [module.vnets]
  source     = "../../child/subnet"
  rg_name    = "titli-rg"
  vnet_name  = "titli-vnet"
  sub_name   = "titli-front-subnet"
  add_pref   = ["10.0.0.1/22"] # 2 ki power 32 minus 22 
}

module "back_subs" {
  depends_on = [module.vnets]
  source     = "../../child/subnet"
  rg_name    = "titli-rg"
  vnet_name  = "titli-vnet"
  sub_name   = "titli-back-subnet"
  add_pref   = ["10.0.0.2/22"] # 2 ki power 32 minus 22 
}

module "front_public_ip" {
  depends_on        = [module.rgs]
  source            = "../../child/pip"
  pip_name          = "titli-front-pip"
  rg_name           = "titli-rg"
  rg_location       = "Central India"
  allocation_method = "Static" # Static and Dynamic - private IP
  # sku = "Basic"
}

module "back_public_ip" {
  depends_on        = [module.rgs]
  source            = "../../child/pip"
  pip_name          = "titli-back-pip"
  rg_name           = "titli-rg"
  rg_location       = "Central India"
  allocation_method = "Static" # Static and Dynamic - private IP
  # sku = "Basic"
}

module "key_vault" {
  depends_on     = [module.rgs]
  source         = "../../child/key_vault"
  key_vault_name = "merekey123"
  rg_name        = "titli-rg"
  rg_location    = "Central India"
}

module "key_vault_user" {
  depends_on     = [module.key_vault]
  source         = "../../child/key_user"
  key_vault_name = "merekey123"
  rg_name        = "merauser"
  username       = "myuser"
}

module "key_vault_pssd" {
  depends_on     = [module.key_vault]
  source         = "../../child/key_pssd"
  key_vault_name = "merekey123"
  rg_name        = "merauser"
  password       = "Harekrishna@123"

}

module "frontend_vm" {
  depends_on  = [module.front_subs, module.front_public_ip, module.key_vault]
  source      = "../../child/vm"
  rg_name     = "titli-rg"
  rg_location = "Central India"
  vm_name     = "titli-vm-frontend2"
  vm_size     = "Standard_B1s"
  username    = "username"
  password    = "password"
  # image_publisher      = "Canonical"
  # image_offer          = "0001-com-ubuntu-server-focal"
  # image_sku            = "20_04-lts"
  # image_version        = "latest"
  nic_name             = "titli-nic-vm-frontend2"
  frontend_ip_name     = "titli-front-pip"
  vnet_name            = "titli-vnet-todoapp"
  frontend_subnet_name = "titli-vnet"
  key_vault_name       = "merekey123"
  # username_secret_name = "vm-username"
  # password_secret_name = "vm-password"
}

module "sql_server" {
  source       = "../../child/sql_server"
  sql_ser_name = "titli-sql-server"
  rg_name      = "titli-rg"
  rg_location  = "Central India"
  admin_login  = "sqladmin"
  admin_pssd   = "P@ssw0rd1234!"
}

module "sql_database" {
  depends_on   = [module.sql_server]
  source       = "../../child/sql_database"
  sql_ser_name = "titli-sql-server"
  rg_name      = "titli-rg"
  sql_db_name  = "titli-sql-database"
}
