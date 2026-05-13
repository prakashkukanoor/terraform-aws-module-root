output "eks_cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_security_group_id" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_security_group_id
}

output "eks_cluster_iam_role_name" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_iam_role_name
}

output "eks_cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = module.eks.cluster_certificate_authority_data
}

output "eks_node_group_name" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = module.eks.node_group_name
}

output "eks_configure_kubectl" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = module.eks.configure_kubectl
}