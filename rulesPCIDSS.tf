resource "aws_config_config_rule" "access-keys-rotated-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "access-keys-rotated"
  description = "Check access keys rotated"

  source {
    owner             = "AWS"
    source_identifier = "ACCESS_KEYS_ROTATED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "account-part-of-organizations-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "account-part-of-organizations"
  description = "Check account part of organizations"

  source {
    owner             = "AWS"
    source_identifier = "ACCOUNT_PART_OF_ORGANIZATIONS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "alb-http-drop-invalid-header-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "alb-http-drop-invalid-header-enabled"
  description = "Check alb http drop invalid header enabled"

  source {
    owner             = "AWS"
    source_identifier = "ALB_HTTP_DROP_INVALID_HEADER_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "alb-http-to-https-redirection-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "alb-http-to-https-redirection-check"
  description = "alb http to https redirection check enabled"

  source {
    owner             = "AWS"
    source_identifier = "ALB_HTTP_TO_HTTPS_REDIRECTION_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "api-gw-cache-enabled-and-encrypted-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "api-gw-cache-enabled-and-encrypted"
  description = "api gw cache enabled and encrypted enabled"

  source {
    owner             = "AWS"
    source_identifier = "API_GW_CACHE_ENABLED_AND_ENCRYPTED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "api-gw-execution-logging-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "api-gw-execution-logging-enabled"
  description = "api-gw execution logging enabled"

  source {
    owner             = "AWS"
    source_identifier = "API_GW_EXECUTION_LOGGING_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "api-gw-ssl-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "api-gw-ssl-enabled"
  description = "api-gw ssl enabled"

  source {
    owner             = "AWS"
    source_identifier = "API_GW_SSL_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "autoscaling-group-elb-healthcheck-required-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "autoscaling-group-elb-healthcheck-required"
  description = "autoscaling group elb healthcheck required enabled"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_GROUP_ELB_HEALTHCHECK_REQUIRED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "autoscaling-launch-config-public-ip-disabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "autoscaling-launch-config-public-ip-disabled"
  description = "autoscaling launch config public ip disabled"

  source {
    owner             = "AWS"
    source_identifier = "AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "cloud-trail-cloud-watch-logs-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "cloud-trail-cloud-watch-logs-enabled"
  description = "cloud trail cloud watch logs enabled"

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "cloudtrail-s3-dataevents-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "cloudtrail-s3-dataevents-enabled"
  description = "cloudtrail s3 dataevents enabled"

  source {
    owner             = "AWS"
    source_identifier = "CLOUDTRAIL_S3_DATAEVENTS_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "cw-loggroup-retention-period-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "cw-loggroup-retention-period-check"
  description = "cloud watch loggroup retention period check"

  source {
    owner             = "AWS"
    source_identifier = "CW_LOGGROUP_RETENTION_PERIOD_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "dms-replication-not-public-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "dms-replication-not-public"
  description = "dms replication not public"

  source {
    owner             = "AWS"
    source_identifier = "DMS_REPLICATION_NOT_PUBLIC"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "dynamodb-table-encrypted-kms-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "dynamodb-table-encrypted-kms"
  description = "dynamodb table encrypted kms"

  source {
    owner             = "AWS"
    source_identifier = "DYNAMODB_TABLE_ENCRYPTED_KMS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "ec2-ebs-encryption-by-default-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "ec2-ebs-encryption-by-default"
  description = "ec2 ebs encryption by default"

  source {
    owner             = "AWS"
    source_identifier = "EC2_EBS_ENCRYPTION_BY_DEFAULT"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "ec2-managed-by-systems-manager-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "ec2-instance-managed-by-systems-manager"
  description = "ec2-instance managed by systems-manager"

  source {
    owner             = "AWS"
    source_identifier = "EC2_INSTANCE_MANAGED_BY_SSM"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "ec2-instance-no-public-ip-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "ec2-instance-no-public-ip"
  description = "ec2-instance no public ip"

  source {
    owner             = "AWS"
    source_identifier = "EC2_INSTANCE_NO_PUBLIC_IP"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "ec2-instance-profile-attached-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "ec2-instance-profile-attached"
  description = "ec2-instance profile attached"

  source {
    owner             = "AWS"
    source_identifier = "EC2_INSTANCE_PROFILE_ATTACHED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "ec2-managedinstance-association-compliance-status-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "ec2-managedinstance-association-compliance-status-check"
  description = "ec2 managedinstance association compliance status check"

  source {
    owner             = "AWS"
    source_identifier = "EC2_MANAGEDINSTANCE_ASSOCIATION_COMPLIANCE_STATUS_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "ec2-managedinstance-patch-compliance-status-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "ec2-managedinstance-patch-compliance-status-check"
  description = "ec2 managedinstance patch compliance status check"

  source {
    owner             = "AWS"
    source_identifier = "EC2_MANAGEDINSTANCE_PATCH_COMPLIANCE_STATUS_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "efs-encrypted-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "efs-encrypted-check"
  description = "efs encrypted check"

  source {
    owner             = "AWS"
    source_identifier = "EFS_ENCRYPTED_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "elb-acm-certificate-required" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "elb-acm-certificate-required"
  description = "elb acm-certificate required"

  source {
    owner             = "AWS"
    source_identifier = "ELB_ACM_CERTIFICATE_REQUIRED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "elb-logging-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "elb-logging-enabled"
  description = "Check elb logging enabled"

  source {
    owner             = "AWS"
    source_identifier = "ELB_LOGGING_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "elb-predefined-security-policy-ssl-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "elb-predefined-security-policy-ssl-check"
  description = "elb predefined security policy ssl check"

  source {
    owner             = "AWS"
    source_identifier = "ELB_PREDEFINED_SECURITY_POLICY_SSL_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "elb-tls-https-listeners-only-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "elb-tls-https-listeners-only"
  description = "elb tls https listeners only"

  source {
    owner             = "AWS"
    source_identifier = "ELB_TLS_HTTPS_LISTENERS_ONLY"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "elbv2-acm-certificate-required-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "elbv2-acm-certificate-required"
  description = "elbv2 acm certificate required"

  source {
    owner             = "AWS"
    source_identifier = "ELBV2_ACM_CERTIFICATE_REQUIRED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "iam-customer-policy-blocked-kms-actions-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "iam-customer-policy-blocked-kms-actions"
  description = "iam customer policy blocked kms actions"

  source {
    owner             = "AWS"
    source_identifier = "IAM_CUSTOMER_POLICY_BLOCKED_KMS_ACTIONS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "iam-inline-policy-blocked-kms-actions-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "iam-inline-policy-blocked-kms-actions"
  description = "iam inline policy blocked kms actions"

  source {
    owner             = "AWS"
    source_identifier = "IAM_INLINE_POLICY_BLOCKED_KMS_ACTIONS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "iam-policy-no-statements-with-admin-access-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "iam-policy-no-statements-with-admin-access"
  description = "iam-policy nostatements with admin access"

  source {
    owner             = "AWS"
    source_identifier = "IAM_POLICY_NO_STATEMENTS_WITH_ADMIN_ACCESS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "iam-policy-no-statements-with-full-access-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "iam-policy-no-statements-with-full-access"
  description = "iam-policy nostatement with full access"

  source {
    owner             = "AWS"
    source_identifier = "IAM_POLICY_NO_STATEMENTS_WITH_FULL_ACCESS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "iam-user-group-membership-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "iam-user-group-membership-check"
  description = "iam user group membership check"

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_GROUP_MEMBERSHIP_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "iam-user-mfa-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "iam-user-mfa-enabled"
  description = "iam user mfa enabled"

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_MFA_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "iam-user-unused-credentials-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "iam-user-unused-credentials-check"
  description = "iam user unused credentials check"
  input_parameters = <<EOF
  {
    "MaxCredentialUsageAge" : "${local.max_credential_usage_age}"
  }
  EOF

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_UNUSED_CREDENTIALS_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "kms-cmk-not-scheduled-for-deletion-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "kms-cmk-not-scheduled-for-deletion"
  description = "kms cmk not scheduled for deletion"

  source {
    owner             = "AWS"
    source_identifier = "KMS_CMK_NOT_SCHEDULED_FOR_DELETION"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "no-unrestricted-route-to-igw-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "no-unrestricted-route-to-igw"
  description = "no unrestricted route to igw"

  source {
    owner             = "AWS"
    source_identifier = "NO_UNRESTRICTED_ROUTE_TO_IGW"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "lambda-public-access-prohibited-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "lambda-function-public-access-prohibited"
  description = "lambda function public access prohibited"

  source {
    owner             = "AWS"
    source_identifier = "LAMBDA_FUNCTION_PUBLIC_ACCESS_PROHIBITED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "lambda-inside-vpc-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "lambda-inside-vpc"
  description = "lambda inside vpc"

  source {
    owner             = "AWS"
    source_identifier = "LAMBDA_INSIDE_VPC"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "rds-automatic-minor-version-upgrade-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "rds-automatic-minor-version-upgrade-enabled"
  description = "rds automatic minor version upgrade enabled"

  source {
    owner             = "AWS"
    source_identifier = "RDS_AUTOMATIC_MINOR_VERSION_UPGRADE_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "rds-logging-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "rds-logging-enabled"
  description = "rds logging enabled"

  source {
    owner             = "AWS"
    source_identifier = "RDS_LOGGING_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "rds-snapshot-encrypted-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "rds-snapshot-encrypted"
  description = "rds snapshot encrypted"

  source {
    owner             = "AWS"
    source_identifier = "RDS_SNAPSHOT_ENCRYPTED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-bucket-level-public-access-prohibited-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "s3-bucket-level-public-access-prohibited"
  description = "s3 bucket level public access prohibited"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_LEVEL_PUBLIC_ACCESS_PROHIBITED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-bucket-logging-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "s3-bucket-logging-enabled"
  description = "s3 bucket logging enabled"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_LOGGING_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-bucket-policy-grantee-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "s3-bucket-policy-grantee-check"
  description = "s3 bucket policy grantee check"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_POLICY_GRANTEE_CHECK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-bucket-public-read-prohibited" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "s3-bucket-public-read-prohibited"
  description = "s3 bucket public read prohibited"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-bucket-server-side-encryption-enabled" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "s3-bucket-server-side-encryption-enabled"
  description = "s3 bucket server side encryption enabled"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-bucket-versioning-enabled" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "s3-bucket-versioning-enabled"
  description = "s3 bucket versioning enabled"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_VERSIONING_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "s3-default-encryption-kms" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "s3-default-encryption-kms"
  description = "s3 default encryption kms"

  source {
    owner             = "AWS"
    source_identifier = "S3_DEFAULT_ENCRYPTION_KMS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "secretsmanager-using-cmk-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "secretsmanager-using-cmk"
  description = "secretsmanager using cmk"

  source {
    owner             = "AWS"
    source_identifier = "SECRETSMANAGER_USING_CMK"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "sns-encrypted-kms-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "sns-encrypted-kms"
  description = "sns encrypted kms"

  source {
    owner             = "AWS"
    source_identifier = "SNS_ENCRYPTED_KMS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "ssm-document-not-public-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "ssm-document-not-public"
  description = "ssm document not public"

  source {
    owner             = "AWS"
    source_identifier = "SSM_DOCUMENT_NOT_PUBLIC"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "subnet-auto-assign-public-ip-disabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "subnet-auto-assign-public-ip-disabled"
  description = "subnet auto assign public ip disabled"

  source {
    owner             = "AWS"
    source_identifier = "SUBNET_AUTO_ASSIGN_PUBLIC_IP_DISABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "vpc-flow-logs-enabled-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "vpc-flow-logs-enabled"
  description = "vpc flow logs enabled"

  source {
    owner             = "AWS"
    source_identifier = "VPC_FLOW_LOGS_ENABLED"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}

resource "aws_config_config_rule" "vpc-sg-open-only-to-authorized-ports-check" {
  count       = var.check_pci-dss ? 1 : 0
  name        = "vpc-sg-open-only-to-authorized-ports"
  description = "vpc sg open only to authorized ports"

  source {
    owner             = "AWS"
    source_identifier = "VPC_SG_OPEN_ONLY_TO_AUTHORIZED_PORTS"
  }

  tags = var.tags
  depends_on = [aws_config_configuration_recorder.main]
}