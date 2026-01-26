variable "applications" {
  type = map(object({
    buckets                        = list(string)
    dynamodb_tables                = list(string)
    dynamo_db_policy_json_tpl_path = string
    s3_policy_json_tpl_path        = string
    arn                            = string
    postgress = object({
      engine         = string
      engine_version = string
      instance_class = string
      username       = string
      password       = string
      # parameter_group_name = string
      skip_final_snapshot = bool
      db_names            = list(string)
      # identifier          = string
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

# variable "instance_type" {
#   type = string
# }
# variable "filter_name" {
#   type = string
# }
# variable "number_of_ec2" {
#   type = number
# }