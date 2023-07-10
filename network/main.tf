#Azure Generic vNet Module
resource "azurerm_resource_group" "network" {
  name = var.system_name

  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.system_name}-vnet"
  location            = var.location
  address_space       = ["${var.address_space}"]
  resource_group_name = azurerm_resource_group.network.name
  tags                = var.tags
}


#resource "azurerm_subnet" "subnet" {
#  name                 = "${var.system_name}subnet"
#  resource_group_name  = azurerm_resource_group.network.name
#  virtual_network_name = azurerm_virtual_network.vnet.name
#  address_prefixs       = "${element(split(",", var.subnets), count.index)}"
#  service_endpoints    = [Microsoft.Storage"]
#}