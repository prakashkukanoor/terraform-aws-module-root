module "s3" {
  source = "git@github.com:prakashkukanoor/terraform-aws-s3-module.git"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

}

module "dynamodb" {
  source = "git@github.com:prakashkukanoor/terraform-aws-dynamodb-module.git"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

}