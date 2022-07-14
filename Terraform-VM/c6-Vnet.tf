module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "2.5.0" 
  vnet_name = local.vnet_name
  resource_group_name = azurerm_resource_group.myrg.name
  address_space       = var.addressapce
  subnet_prefixes     = var.subnetpre
  subnet_names        = var.subnetname

  tags = {
    environment = "Assign"
    costcenter  = "Task=1"
  }
  depends_on = [azurerm_resource_group.myrg]   
}


output "Virtual_Network_name" {
  description = "VNET name"
  value = module.vnet.vnet_name
}
output "VirtualnetworkID" {
  description = "Vnet ID"
  value=module.vnet.vnet_id
}

output "Subnet" {
  description = "subnetnames"
  value=module.vnet.vnet_subnets
}













