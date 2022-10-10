module "resource_group" {
  source   = "./modules/RG_module"
  RG_Name  = var.RG_Name
  Location = var.Location
}

module "network_module" {
  source           = "./modules/Vnet"
  RG_Name          = var.RG_Name
  Location         = var.Location
  Vnet_Name        = var.Vnet_Name
  Subnet_Name      = var.Subnet_Name
  depends_on       = [module.resource_group]
  address_space    = var.address_space
  address_prefixes = var.address_prefixes

}

module "vm_module" {
  source      = "./modules/Vm_module"
  RG_Name     = var.RG_Name
  Location    = var.Location
  Subnet_Name = var.Subnet_Name
  Vnet_Name   = var.Vnet_Name
  NIC         = var.NIC
  VM_Name     = var.VM_Name
  PublicIp    = var.PublicIp
  depends_on = [
    module.resource_group,
    module.network_module
  ]
}

module "NSG_module" {
  source       = "./modules/NSG_module"
  RG_Name      = var.RG_Name
  Location     = var.Location
  Subnet_Name  = var.Subnet_Name
  Vnet_Name    = var.Vnet_Name
  NSG_Name     = var.NSG_Name
  NSG_Location = var.NSG_Location
  depends_on = [
    module.network_module
  ]
}

module "LB" {
  source         = "./modules/LB"
  RG_Name        = var.RG_Name
  Location       = var.Location
  BackendPool    = var.BackendPool
  frontendIpName = var.frontendIpName
  Probe          = var.Probe
  LB_Name        = var.LB_Name
  Vnet_Name      = var.Vnet_Name
  public_ip_lb   = var.public_ip_lb
  depends_on = [
    module.resource_group, module.vm_module, module.Public_ip_lb_module
  ]
}

module "Public_ip_lb_module" {
  source       = "./modules/Public_ip_lb"
  RG_Name      = var.RG_Name
  Location     = var.Location
  public_ip_lb = var.public_ip_lb
  depends_on = [
    module.resource_group
  ]
}
