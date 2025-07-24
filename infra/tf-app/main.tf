resource "azurerm_resource_group" "app" {
  name     = "khal0233-a12-rg"
  location = "canadaeast"
}
provider "azurerm" {
  features {}

  use_oidc = true
}

