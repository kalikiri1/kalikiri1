variable "RG_Name" {
  type        = string
  description = "Name of the Resource group"
}

variable "Location" {
  type        = string
  description = "Location of the Resource group"
}

variable "Vnet_Name" {
  type        = string
  description = "Name of Virtual network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for Vnet"
}

variable "address_prefixes" {
  type        = list(string)
  description = "Address prefixes for Vnet"
}

variable "PublicIp" {
  type        = string
  description = "Name of the Public IP"
}

variable "NIC" {
  type        = string
  description = "Name of the NIC"
  default     = "Network Interface"
}

variable "Subnet_Name" {
  type        = string
  description = "Name of Subnet"
}

variable "VM_Name" {
  type        = string
  description = "Virtual machine name"
}

variable "NSG_Name" {
  type        = string
  description = "Name of the NSG"
}

variable "NSG_Location" {
  type        = string
  description = "location of the NSG"
}

variable "LB_Name" {
  type        = string
  description = "Name of Load Balancer"
}

variable "frontendIpName" {
  type        = string
  description = "Name of the Frontend IP"
}

variable "BackendPool" {
  type        = string
  description = "Name of the backend pool"
}

variable "Probe" {
  type        = string
  description = "Name of the probe"
}

variable "public_ip_lb" {
  type        = string
  description = "Name of the public ip"
}