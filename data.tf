# The AWS account id
data "aws_caller_identity" "current" {}

# The AWS partition for differentiating between AWS commercial and GovCloud
data "aws_partition" "current" {}

# The region is pulled from the current AWS session you are in
data "aws_region" "current" {}

# Config bucket policies
data "aws_iam_policy_document" "S3" {

  statement {
    sid    = "config-permissions-check"
    effect = local.config_effect
    principals {
      type        = "Service"
      identifiers = ["config.amazonaws.com"]
    }
    actions   = ["s3:GetBucketAcl"]
    resources = [local.bucket_arn]
  }

  statement {
    sid    = "config-bucket-delivery"
    effect = local.config_effect
    principals {
      type        = "Service"
      identifiers = ["config.amazonaws.com"]
    }
    actions = ["s3:PutObject"]
    condition {
      test     = "StringEquals"
      variable = "s3:x-amz-acl"
      values   = ["bucket-owner-full-control"]
    }
    resources = local.config_resources
  }

  # Enforce TLS requests only
  statement {
    sid    = "enforce-tls-requests-only"
    effect = "Deny"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = ["s3:*"]
    resources = [
      local.bucket_arn,
      "${local.bucket_arn}/*"
    ]
    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }
}

# Config SNS policies
data "aws_iam_policy_document" "sns_config" {
  statement {
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = [aws_iam_role.main.arn]
    }
    actions   = ["SNS:Publish"]
    resources = [aws_sns_topic.config.arn]
  }
}

# Allow the AWS Config role to deliver logs to configured S3 Bucket.
# Derived from IAM Policy document found at https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html

data "aws_iam_policy_document" "aws_config_policy" {
  statement {
    sid    = "AWSConfigBucketPermissionsCheck"
    effect = "Allow"
    actions = [
      "s3:GetBucketAcl",
    ]
    resources = [
      format("arn:%s:s3:::%s", data.aws_partition.current.partition, aws_s3_bucket.aws_logs.bucket)
    ]
  }

  statement {
    sid    = "AWSConfigBucketExistenceCheck"
    effect = "Allow"
    actions = [
      "s3:ListBucket"
    ]
    resources = [
      format("arn:%s:s3:::%s", data.aws_partition.current.partition, aws_s3_bucket.aws_logs.bucket)
    ]
  }
  statement {
    sid     = "AWSConfigBucketDelivery"
    effect  = "Allow"
    actions = ["s3:PutObject"]
    resources = [
      format("arn:%s:s3:::%s%s%s/AWSLogs/%s/Config/*",
        data.aws_partition.current.partition,
        aws_s3_bucket.aws_logs.bucket,
        "/",
        local.config_S3_prefix,
        data.aws_caller_identity.current.account_id
      )
    ]
    condition {
      test     = "StringLike"
      variable = "s3:x-amz-acl"
      values   = ["bucket-owner-full-control"]
    }
  }
}

# Allow IAM policy to assume the role for AWS Config
data "aws_iam_policy_document" "aws-config-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["config.amazonaws.com"]
    }

    effect = "Allow"
  }
}