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

module "windowsservers" {
  source                        = "Azure/compute/azurerm"
  resource_group_name           = azurerm_resource_group.myrg.name
  vm_hostname                   = "mywinvm"
  is_windows_image              = true
  admin_username                = var.uname
  admin_password                = var.password
  allocation_method             = var.allocation
  public_ip_sku                 = var.Pip
  nb_public_ip                  = 1
  remote_port                   = var.portsno
  nb_instances                  = 1
  vm_os_id                      = data.azurerm_image.myimage.id
  vm_size                       = var.sku
  vnet_subnet_id                = data.azurerm_subnet.subnet1.id
  enable_accelerated_networking = true
  license_type                  = var.ostype
  identity_type                 = "" 
  depends_on = [
    azurerm_resource_group.myrg
  ]
}

