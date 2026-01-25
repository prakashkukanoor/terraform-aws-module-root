provider "aws" {
  region = var.region
}

module "s3" {
  source = "git@github.com:prakashkukanoor/terraform-aws-s3-module.git?ref=v1.0.1"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

}

module "dynamodb" {
  source = "git@github.com:prakashkukanoor/terraform-aws-dynamodb-module.git?ref=v1.0.1"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

}

module "eks" {
  source = "git@github.com:prakashkukanoor/terraform-aws-eks-module.git?ref=v1.0.0"

  environment     = var.environment
  team            = var.team
  cluster_name    = var.cluster_name
  private_subnets = var.application_private_subnet_ids

}

module "rds" {
  source = "git@github.com:prakashkukanoor/terraform-aws-rds-module.git"

  environment = var.environment
  team = var.team
  applications = var.applications
  db_subnet_ids = var.db_subnet_ids
  

}

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