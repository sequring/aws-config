
resource "aws_sns_topic" "config" {
  name              = var.config_name
  kms_master_key_id = "alias/aws/sns"
}

resource "aws_sns_topic_policy" "config" {
  arn    = aws_sns_topic.config.arn
  policy = data.aws_iam_policy_document.sns_config.json
}

resource "aws_s3_bucket" "aws_logs" {
  bucket        = var.s3_bucket_name
  force_destroy = false

  tags = merge(
    var.tags, {
      Name = var.s3_bucket_name
    }
  )
}

resource "aws_s3_bucket_policy" "aws_logs" {
  bucket = aws_s3_bucket.aws_logs.id
  policy = data.aws_iam_policy_document.S3.json
}

resource "aws_s3_bucket_acl" "aws_logs" {
  bucket = aws_s3_bucket.aws_logs.id
  acl    = var.s3_bucket_acl
}

resource "aws_s3_bucket_server_side_encryption_configuration" "aws_logs" {
  bucket = aws_s3_bucket.aws_logs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

/*
resource "aws_s3_bucket_versioning" "aws_logs" {
  bucket = aws_s3_bucket.aws_logs.id
  versioning_configuration {
    status     = "Enabled"
    mfa_delete = "Enabled"
  }
}
*/

resource "aws_config_configuration_recorder_status" "main" {
  name       = var.config_name
  is_enabled = true
  depends_on = [aws_config_delivery_channel.main]
}

resource "aws_config_delivery_channel" "main" {
  name           = var.config_name
  s3_bucket_name = aws_s3_bucket.aws_logs.bucket
  s3_key_prefix  = local.config_S3_prefix
  sns_topic_arn  = aws_sns_topic.config.arn

  snapshot_delivery_properties {
    delivery_frequency = var.config_delivery_frequency
  }

  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_configuration_recorder" "main" {
  name     = var.config_name
  role_arn = aws_iam_role.main.arn

  recording_group {
    all_supported                 = true
    include_global_resource_types = var.include_global_resource_types
  }
}