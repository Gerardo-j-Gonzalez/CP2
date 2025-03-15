provider "azurerm" {
  features {}

 subscription_id = "2d171ba6-7d61-4bf5-a589-4f6469c86050"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "casopractico2-aks"
  location            = "West Europe"
  resource_group_name = "terraform-rg"
  dns_prefix          = "casopractico2"

  default_node_pool {
    name       = "agentpool"
    node_count = 1
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }


}