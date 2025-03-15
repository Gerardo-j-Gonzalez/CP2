variable "resource_group_name" {
  default = "terraform-rg"
}

variable "location" {
  default = "West Europe"
}

variable "vm_name" {
  default = "VM-Azure-2"
}

variable "vm_size" {
  default = "Standard_D4s_v3"
}

variable "admin_username" {
  default = "azureuser"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "aks_name" {
  default = "casopractico2aks"
}

variable "node_count" {
  default = 1
}

variable "aks_dns_prefix" {
  default = "casopractico2aksdns"
}