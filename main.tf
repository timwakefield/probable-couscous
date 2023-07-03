# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    cloud { # The name of your Terraform Cloud organization.
    organization = "zonedigital"

   # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "probable-couscous"
    }
    
}
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

cloud { # The name of your Terraform Cloud organization.
    organization = "zonedigital"

   # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "probable-couscous"
    }
    
}