module "s3" {
  source = "git@github.com:prakashkukanoor/terraform-aws-s3-module.git?ref=v1.0.0"

  applications = var.applications
  environment  = var.environment
  team         = var.team
  region       = var.region

}