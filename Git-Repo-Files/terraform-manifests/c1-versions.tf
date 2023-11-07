# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
# Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "DevOps-Terraform-IaC23-RG"
    storage_account_name  = "devopsterraformstorage23"
    container_name        = "devopsterraformstoragecontainer23"
    key                   = "project-1-eastus2-terraform.tfstate"
  }  
}

# Provider Block
provider "azurerm" {
 features {}          
}

#resource update
