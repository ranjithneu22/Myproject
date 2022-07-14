variable "resoure_group_name" {
  description = "Resource Group Name"
  type = string
  default = "myrg1"
}
# 4. Resource Group Location
variable "resoure_group_location" {
  description = "Resource Group Location"
  type = string
  default = "Central india"
}
# 5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type = string 
  default = "myvnet"
}

variable "lbpublicip" {
   type = string 
  default = "lbpublicip"
}
variable "web-lb" {
  description = "Load balancer name"
  type = string 
  default = "web-lb"
}

# Linux VM Input Variables Placeholder file.
variable "web_vmss_nsg_inbound_ports" {
  description = "Web VMSS NSG Inbound Ports"
  type = list(string)
  default = [3389, 80, 443]
}

variable "web-vmss-nsg" {
  description = "VMSS NSG NAME"
  type = string 
  default = "web-vmss-nsg"
}
variable "web-vmss" {
  description = "VMSS name"
  type = string 
  default = "web-vmss"
}

variable "Pip" {
  
  type = string 
  default = "Standard"
}

variable "uname" {
    type = string 
  default = "ranjith"
}

variable "password" {
    type = string 
  default = "Qwerty@123456"
}

variable "allocation" {
    type = string 
  default = "Static"
}
variable "portsno" {
    type = string 
  default = "80"
}
variable "sku" {
    type = string 
  default = "Standard_DS2_V2"
}
variable "ostype" {
    type = string 
  default = "Windows_Client"
}
variable "subnetpre" {
    type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "subnetname" {
    type = list(string)
  default = ["subnet1", "subnet2", "subnet3"]
}
variable "addressapce" {
    type = list(string)
  default = ["10.0.0.0/16"]
}


