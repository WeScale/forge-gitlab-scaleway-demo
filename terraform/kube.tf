resource "scaleway_k8s_cluster_beta" "main" {
  name             = "main"
  ingress          = var.kapsule_ingress
  enable_dashboard = true
  version          = var.kapsule_k8s_version
  cni              = "cilium"
}

resource "scaleway_k8s_pool_beta" "main" {
  cluster_id = scaleway_k8s_cluster_beta.main.id
  name       = "main"
  node_type  = var.kapsule_node_type
  size       = var.kapsule_pool_size
}
