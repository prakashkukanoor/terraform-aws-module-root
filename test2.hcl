[
      {
          arn                       = "arn:aws:iam::<IAM ROLE>"
          policy_json_tpl_file_path = "<PATH-TO>/dynamodb_policy.json.tpl"
          table_name                = "dynamo-db-001"
          team                      = "functional_domain_01"
        },
      {
          arn                       = "arn:aws:iam::<IAM ROLE>"
          policy_json_tpl_file_path = "<PATH-TO>/dynamodb_policy.json.tpl"
          table_name                = "dynamo-db-002"
          team                      = "functional_domain_02"
      },
]