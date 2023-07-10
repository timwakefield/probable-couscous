# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
    }
    cloud { # The name of your Terraform Cloud organization.
    organization = "zonedigital"

   # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "probable-couscous"
    }
    
    }
  

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.system_name}-network"
  location = var.location
}
#
# Create networking
#
module "network" {
  source              = "./network"
  resource_group_name = "${var.system_name}-network"
  location            = var.location
  address_space       = var.address_space     # IP address space used for the network, subnets will be created in this space
  #address_prefixes      = "${lookup(var.subnets)}"
  system_name         = var.system_name

  tags = {
    project = var.project
    env     = var.env
    role    = "Vnet"
  }
}