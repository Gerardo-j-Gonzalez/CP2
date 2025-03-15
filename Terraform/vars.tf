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
  default = "Standard_B2s"
}

variable "admin_username" {
  default = "azureuser"
}

variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}
