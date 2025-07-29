terraform {
  required_version = "~> 1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.96.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "khal0233-cst8918-tf-backend"
    storage_account_name = "khal0233tfstorage"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc                   = true
  skip_provider_registration = true
}
