module "networking" {
  source = "git@github.com:prakashkukanoor/terraform-aws-vpc-subnets-routetable.git?ref=v1.0.5"

  environment                 = var.environment
  team                        = var.team
  region                      = var.region
  vpc_cidr_ipv4               = var.vpc_cidr_ipv4
  enable_ipv6                 = var.enable_ipv6
  availability_zone           = var.availability_zone
  application_public_subnets  = var.application_public_subnets
  application_private_subnets = var.application_private_subnets
  database_private_subnets    = var.database_private_subnets
  vpc_gateway_endpoints       = var.vpc_gateway_endpoints
  vpc_interface_endpoints     = var.vpc_interface_endpoints

}
module "s3" {
  source = "git@github.com:prakashkukanoor/terraform-aws-s3-module.git?ref=v1.0.1"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

  depends_on = [module.networking]

}

module "dynamodb" {
  source = "git@github.com:prakashkukanoor/terraform-aws-dynamodb-module.git?ref=v1.0.1"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

  depends_on = [module.networking]

}

module "ec2" {
  source = "git@github.com:prakashkukanoor/terraform-aws-module-ec2-instance.git"

  environment   = var.environment
  team          = var.team
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  filter_name   = var.filter_name

  depends_on = [module.networking]

}