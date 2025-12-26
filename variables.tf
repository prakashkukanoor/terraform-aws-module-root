variable "applications" {
  type = map(object({
    buckets                        = list(string)
    dynamodb_tables                = list(string)
    dynamo_db_policy_json_tpl_path = string
    s3_policy_json_tpl_path        = string
    arn                            = string
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

variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

# variable "instance_type" {
#   type = string
# }
# variable "filter_name" {
#   type = string
# }
# variable "number_of_ec2" {
#   type = number
# }