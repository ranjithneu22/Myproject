data "azurerm_image" "myimage" {
  name                = "myPackerImage"
  resource_group_name = "myPackerGroup"
}

data "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  virtual_network_name = module.vnet.vnet_name
  resource_group_name  = azurerm_resource_group.myrg.name
  depends_on = [
    module.vnet
  ]
}

resource "azurerm_windows_virtual_machine_scale_set" "web_vmss" {
  name                = var.web-vmss
  resource_group_name = azurerm_resource_group.myrg.name
  location            = azurerm_resource_group.myrg.location
  sku                 = "Standard_DS1_v2"
  instances           = 1
  admin_password      = "Ranjith@123456"
  admin_username      = "azureadmin"

  source_image_id = data.azurerm_image.myimage.id

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
upgrade_mode = "Automatic"

  network_interface {
    name    = "web-vmss-nic"
    primary = true
    network_security_group_id = azurerm_network_security_group.web_vmss_nsg.id
    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id  = data.azurerm_subnet.subnet1.id  
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.web_lb_backend_address_pool.id]
    }
  }
}

