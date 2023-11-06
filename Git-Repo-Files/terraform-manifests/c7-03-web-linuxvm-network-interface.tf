#Create Network Interface
resource "azurerm_network_interface" "web_linuxvm_nic" {
    name = "${local.resource_name_prefix}-web_subnet_nic"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name = "web_subnet_ip-1"
    private_ip_address_allocation = "Dynamic"
    subnet_id = azurerm_subnet.websubnet.id
  }
}