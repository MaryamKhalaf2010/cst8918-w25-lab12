terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "khal0233-cst8918-tf-backend"
    storage_account_name = "khal0233tfstorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
  skip_provider_registration = true
}

# Data source for existing storage account
data "azurerm_storage_account" "existing" {
  name                = "khal0233tfstorage"
  resource_group_name = "khal0233-cst8918-tf-backend"
}

output "resource_group_name" {
  value = "khal0233-cst8918-tf-backend"
}

output "storage_account_name" {
  value = "khal0233tfstorage"
}

output "container_name" {
  value = "tfstate"
}

output "arm_access_key" {
  value     = data.azurerm_storage_account.existing.primary_access_key
  sensitive = true
}
