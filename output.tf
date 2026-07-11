output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "eks_cluster_security_group_id" {
  description = "EKS cluster Security group ID"
  value       = module.eks.cluster_security_group_id
}

output "eks_cluster_iam_role_name" {
  description = "EKS cluster IAM role"
  value       = module.eks.cluster_iam_role_name
}

# output "eks_cluster_certificate_authority_data" {
#   description = "Base64 encoded certificate data required to communicate with the cluster"
#   value       = module.eks.cluster_certificate_authority_data
# }

output "eks_node_group_name" {
  description = "EKS node group"
  value       = module.eks.node_group_name
}

output "aws_autoscaling_group_id" {
  description = "EKS node group Name"
  value       = module.eks.aws_autoscaling_group_id
}

output "eks_configure_kubectl" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = module.eks.configure_kubectl
}