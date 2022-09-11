locals {
  bucket_arn       = "arn:${data.aws_partition.current.partition}:s3:::${var.s3_bucket_name}"
  config_effect    = "Deny"
  config_accounts  = [data.aws_caller_identity.current.account_id]
  config_logs_path = "AWSLogs"
  config_resources = sort(formatlist("${local.bucket_arn}/${local.config_logs_path}/%s/Config/*", local.config_accounts))
  config_S3_prefix = "config"
  password_require_uppercase = var.password_require_uppercase ? "true" : "false"
  password_require_lowercase = var.password_require_lowercase ? "true" : "false"
  password_require_symbols   = var.password_require_symbols ? "true" : "false"
  password_require_numbers   = var.password_require_numbers ? "true" : "false"
  password_min_length        = var.password_min_length
  password_reuse_prevention  = var.password_reuse_prevention
  password_max_age           = var.password_max_age
  acm_days_to_expiration     = "14"
  max_credential_usage_age   = "180"
}