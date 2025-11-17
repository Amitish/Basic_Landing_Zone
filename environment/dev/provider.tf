terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  # backend "azurerm" {
  #     resource_group_name = 
  #     storage_account_name = 
  #     container_name = "
  #     key = "kjf.tfstate"
  # }

}

provider "azurerm" {
  features {}
  subscription_id = "4ca9f234-561a-4a7f-8d97-2a62eba78bab"

}


