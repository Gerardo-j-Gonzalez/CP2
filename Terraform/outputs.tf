output "aks_cluster_name" {
  description = "Nombre del Cluster de Kubernetes"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_kube_config" {
  description = "Configuración Kubeconfig para conectarse al cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}