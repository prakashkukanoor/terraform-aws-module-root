variable "applications" {
  type = map(object({
    services = list(string)
    buckets                        = list(string)
    dynamodb_tables                = list(string)
    dynamo_db_policy_json_tpl_path = string
    s3_policy_json_tpl_path        = string
    arn                            = string
    postgress = object({
      engine              = string
      engine_version      = string
      instance_class      = string
      username            = string
      password            = string
      db_family           = string
      skip_final_snapshot = bool
    })
  }))
}

variable "application_private_subnet_ids" {
  type    = list(string)
  default = []
}

variable "environment" {
  type = string
}
variable "team" {
  type = string
}

variable "db_subnets_ipv4_cidr" {
  type = list(string)
}

variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "db_subnet_ids" {
  type    = list(string)
  default = []
}

variable "eks_version" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "eks_worker_node_desired_capacity" {
  type = number
}

variable "eks_worker_node_min_size" {
  type = number
}

variable "eks_worker_node_max_size" {
  type = number
}

variable "eks_endpoint_private_access" {
  type = bool
  default = true
}

variable "eks_endpoint_public_access" {
  type = bool
  default = false
}

variable "ami_type" {
  type = string
}

variable "eks_iam_user_access" {
  type = object({
    admin  = list(string)
    editor = list(string)
    viewer = list(string)
  })
}

variable "aws_account_number" {
  type = string
}