terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.44.0"
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
  subscription_id = "a042c51a-bb9d-48f6-af09-55adf40d7a98"
  
}


