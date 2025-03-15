
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "casopractico2aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "casopractico2aksdns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "var.vm_size"  # Tamaño de máquina económica
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }
}