variable "applications" {
  type = map(object({
    dynamodb_tables           = list(string)
    policy_json_tpl_file_path = string
  }))
}

variable "environment" {
  type = string
}
variable "team" {
  type = string
}