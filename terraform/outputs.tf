output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster."
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_name" {
  description = "The name of the EKS cluster."
  value       = module.eks.cluster_name
}

output "kubeconfig" {
  description = "The kubeconfig for the EKS cluster."
  value       = module.eks.kubeconfig
}