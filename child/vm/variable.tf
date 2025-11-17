variable "rg_name" {
  description = "The name of the resource group in which to create the virtual machine."
  type        = string
}

variable "rg_location" {
  description = "The Azure region where the virtual machine will be created."
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}

variable "key_vault_name" {
  description = "key vault"
  type        = string
}

variable "username" {
  description = "The administrator username for the virtual machine."
  type        = string # we can hardcode the username here also
  # sensitive = true         # It will hide the username in output
}

variable "password" {
  description = "The administrator username for the virtual machine."
  type        = any # we can hardcode the pssd here also
  # sensitive = true            # It will hide the pssd in output
}

# variable "image_publisher" {
#   description = "The publisher of the image to use for the virtual machine."
#   type        = string
# }

# variable "image_offer" {
#   description = "The offer of the image to use for the virtual machine."
#   type        = string
# }

# variable "image_sku" {
#   description = "The SKU of the image to use for the virtual machine."
#   type        = string
# }

# variable "image_version" {
#   description = "The version of the image to use for the virtual machine."
#   type        = string
# }

variable "nic_name" {
  description = "The name of the network interface for the virtual machine."
  type        = string
}

variable "frontend_ip_name" {
  description = "Frontend Wali IP ka naam"
  type        = string
}

variable "frontend_subnet_name" {
  description = "Frontend Wale Subnet ka naam"
  type        = string
}

variable "vnet_name" {
  description = "Vnet ka naam"
  type        = string
}
