variable "rg_name" {
  description = "The name of the resource group in which the subnet will be created."
  type        = string  
}

variable "vnet_name" {
  description = "The name of the virtual network in which the subnet will be created."
  type        = string  
}

variable "sub_name" {
  description = "The name of the subnet to be created."
  type        = string    
}

variable "add_pref" {
  description = "The address prefixes for the subnet."
  type        = list(string)  
}