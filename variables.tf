variable "applications" {
  type = map(object({
    buckets                   = list(string)
    dynamodb_tables           = list(string)
    dynamo_db_policy_json_tpl_path = string
    s3_policy_json_tpl_path = string
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