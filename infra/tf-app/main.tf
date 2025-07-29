resource "azurerm_resource_group" "app_rg" {
  name     = "khal0233-a12-rg"
  location = "canadaeast"
}

resource "azurerm_virtual_network" "app_vnet" {
  name                = "khal0233-a12-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
}

resource "azurerm_subnet" "app_subnet" {
  name                 = "khal0233-a12-subnet"
  resource_group_name  = azurerm_resource_group.app_rg.name
  virtual_network_name = azurerm_virtual_network.app_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

# ✅ Add a Network Security Group
resource "azurerm_network_security_group" "app_nsg" {
  name                = "khal0233-a12-nsg"
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
}

# ✅ Associate NSG with Subnet
resource "azurerm_subnet_network_security_group_association" "app_subnet_nsg_assoc" {
  subnet_id                 = azurerm_subnet.app_subnet.id
  network_security_group_id = azurerm_network_security_group.app_nsg.id
}
