variable "system_name" {
  description = "The system name"
  default     = "system_name"
}

variable "resource_group_name" {
  description = "Default resource group name that the network will be created in."
  default     = "myapp-rg"
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map

  default = {
    tag1 = ""
    tag2 = ""
  }
}

/*
variable "allow_rdp_traffic" {
  description = "This optional variable, when set to true, adds a security rule allowing RDP traffic to flow through to the newly created network. The default value is false."
  default     = false
}

variable "allow_ssh_traffic" {
  description = "This optional variable, when set to true, adds a security rule allowing SSH traffic to flow through to the newly created network. The default value is false."
  default     = false
}
*/

