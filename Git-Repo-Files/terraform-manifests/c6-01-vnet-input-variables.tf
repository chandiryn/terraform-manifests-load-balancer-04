#Create Vnet and subnets

#Create Vnet Name
variable "vnet_name" {
  description = "virtual network name"
  type = string
  default = "vnet-default"
  
}

#Create Vnet Address Space
variable "vnet_address_space" {
  description = "vnet address space"
  type = list(string)
  default = [ "10.0.0.0/16" ]
  
}

#Create web Subnet
variable "web_subnet_name" {
  description = "web subnet name"
  type = string
  default = "web-default"
  
}

#create web Subnet Address Space
variable "web_subnet_address" {
  description = "web subnet address space"
  type = list(string)
  default = [ "10.0.1.0/24" ]
  
}