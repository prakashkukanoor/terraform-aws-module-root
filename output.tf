output "application_public_subnet_ids" {
  value = module.networking.application_public_subnet_ids
}

output "application_private_subnet_ids" {
  value = module.networking.application_private_subnet_ids
}

output "database_private_subnet_ids" {
  value = module.networking.database_private_subnet_ids
}

output "aws_vpce_gateway_dynamodb_id" {
  value = module.networking.aws_vpce_gateway_dynamodb_id
}

output "aws_vpce_gateway_s3_id" {
  value = module.networking.aws_vpce_gateway_s3_id
}

output "aws_vpce_interface_events_id" {
  value = module.networking.aws_vpce_interface_events_id
}