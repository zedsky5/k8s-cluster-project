resource "kubernetes_limit_range_v1" "container_resource_limits" {
  metadata {
    name      = "ns-resource-limits"
    namespace = "default"
  }

  spec {
    limit {
      type = "Container"
      default = {
        cpu    = "200m"
        memory = "256Mi"
      }
      default_request = {
        cpu    = "100m"
        memory = "128Mi"
      }
    }
  }
}