output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster."
  value       = module.eks.cluster_endpoint
}

output "wordpress_load_balancer_dns_name" {
  description = "The DNS name of the WordPress Load Balancer."
  value       = element(split("/", helm_release.wordpress.status.load_balancer.ingress[0].host), 1)
}