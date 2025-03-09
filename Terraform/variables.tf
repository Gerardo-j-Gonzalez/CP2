variable "resource_group_name" {
  description = "Nombre del grupo de recursos en Azure"
  type        = string
  default     = "terraform-rg"
}

variable "location" {
  description = "Ubicación en Azure donde se desplegarán los recursos"
  type        = string
  default     = "West Europe"
}
