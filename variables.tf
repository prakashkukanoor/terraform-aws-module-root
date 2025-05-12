variable "applications" {
  type = map(object({
    buckets                        = list(string)
    dynamodb_tables                = list(string)
    dynamo_db_policy_json_tpl_path = string
    s3_policy_json_tpl_path        = string
    arn                            = string
  }))
}

variable "environment" {
  type = string
}
variable "team" {
  type = string
}

variable "region" {
  type = string
}

variable "enable_ipv6" {
  type = bool
}

variable "vpc_cidr_ipv4" {
  type = string
}

variable "availability_zone" {
  type = list(string)
}

variable "application_public_subnets" {
  type = map(object({
    az = string
    ipv4_cidr  = string
    ipv6_index = number
  }))
  
}
# variable "application_public_subnets" {
#   type = list(object({
#     ipv4_cidr  = string
#     ipv6_index = number
#   }))
# }

variable "application_private_subnets" {
  type = list(object({
    ipv4_cidr  = string
    ipv6_index = number
  }))
}

variable "database_private_subnets" {
  type = list(object({
    ipv4_cidr  = string
    ipv6_index = number
  }))
}

variable "vpc_gateway_endpoints" {
  type = map(bool)
  default = {
    s3       = true
    dynamodb = true
  }
}

variable "vpc_interface_endpoints" {
  type = map(bool)
  default = {
    events = true
  }
}

variable "instance_type" {
  type = string
}
variable "filter_name" {
  type = string
}
variable "number_of_ec2" {
  type = number
}