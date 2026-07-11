provider "aws" {
  region = var.region
}

module "s3" {
  source = "git@github.com:prakashkukanoor/terraform-aws-s3-module.git?ref=v1.0.2"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

}

module "dynamodb" {
  source = "git@github.com:prakashkukanoor/terraform-aws-dynamodb-module.git?ref=v1.0.2"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

}

module "eks" {
  source = "git@github.com:prakashkukanoor/terraform-aws-eks-module.git?ref=feature/self-managed-eks"

  environment                      = var.environment
  team                             = var.team
  cluster_name                     = var.cluster_name
  eks_private_subnets              = var.application_private_subnet_ids
  applications                     = var.applications
  eks_version                      = var.eks_version
  instance_type                    = var.instance_type
  eks_iam_user_access              = var.eks_iam_user_access
  aws_account_number               = var.aws_account_number
  ami_type                         = var.ami_type
  eks_worker_node_desired_capacity = var.eks_worker_node_desired_capacity
  eks_worker_node_min_size         = var.eks_worker_node_min_size
  eks_worker_node_max_size         = var.eks_worker_node_max_size
  endpoint_private_access          = var.eks_endpoint_private_access
  endpoint_public_access           = var.eks_endpoint_public_access


  depends_on = [module.s3, module.dynamodb]

}

# module "loadbalancer" {
#   source                        = "git@github.com:prakashkukanoor/terraform-aws-load-balancer.git//alb"
#   environment                   = var.environment
#   team                          = var.team
#   cluster_name                  = module.eks.cluster_name
#   subnets                       = module.networking.application_public_subnet_ids
#   eks_worker_asg_id             = module.eks.cluster_security_group_id
#   load_balancer_type            = var.load_balancer_type
#   load_balancing_algorithm_type = var.load_balancing_algorithm_type
#   ingress_node_port             = var.ingress_node_port
#   is_lb_internal                = var.is_lb_internal
#   vpc_id                        = var.vpc_id
#   target_type                   = var.target_type

#   depends_on = [module.eks]
# }

# module "rds" {
#   source = "git@github.com:prakashkukanoor/terraform-aws-rds-module.git?ref=v1.0.0"

#   environment                = var.environment
#   team                       = var.team
#   applications               = var.applications
#   db_subnet_ids              = var.db_subnet_ids
#   vpc_id                     = var.vpc_id
#   db_subnets_ipv4_cidr       = var.db_subnets_ipv4_cidr
#   allow_eks_nodes_sg_traffic = module.eks.sg_eks_nodes_allow_nlb

#   depends_on = [module.eks]

# }

# module "ec2" {
#   source = "git@github.com:prakashkukanoor/terraform-aws-module-ec2-instance.git"

#   environment   = var.environment
#   team          = var.team
#   number_of_ec2 = var.number_of_ec2
#   subnet_id     = module.networking.application_private_subnet_ids
#   vpc_id        = module.networking.vpc_id
#   instance_type = var.instance_type
#   filter_name   = var.filter_name

#   depends_on = [module.networking]

# }