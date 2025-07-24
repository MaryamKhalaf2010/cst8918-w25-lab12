resource "azurerm_resource_group" "app" {
  name     = "khal0233-a12-rg"
  location = "canadaeast"
}
provider "azurerm" {
  features {}

  use_oidc        = true
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  subscription_id = var.subscription_id
}
