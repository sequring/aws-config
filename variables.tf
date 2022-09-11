
variable "config_name" {
  description = "The name of the AWS Config instance."
  type        = string
  default     = "aws-config"
}

variable "s3_bucket_name" {
  description = "A name of S3 bucket for AWS Config logs."
  type        = string
}

variable "s3_log_bucket_retention" {
  description = "Number of days to keep AWS logs around."
  type        = string
}

variable "s3_bucket_acl" {
  description = "Set bucket ACL per [AWS S3 Canned ACL](<https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl>) list."
  default     = "log-delivery-write"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "include_global_resource_types" {
  description = "Specifies whether AWS Config includes all supported types of global resources with the resources that it records."
  type        = bool
  default     = true
}


variable "enable_config_recorder" {
  description = "Enables configuring the AWS Config recorder resources in this module."
  type        = bool
  default     = true
}

variable "config_max_execution_frequency" {
  description = "The maximum frequency with which AWS Config runs evaluations for a rule."
  type        = string
  default     = "TwentyFour_Hours"
}

variable "config_delivery_frequency" {
  description = "The frequency with which AWS Config delivers configuration snapshots."
  default     = "Six_Hours"
  type        = string
}

variable "password_require_uppercase" {
  description = "Require at least one uppercase character in password."
  type        = bool
  default     = true
}

variable "password_require_lowercase" {
  description = "Require at least one lowercase character in password."
  type        = bool
  default     = true
}

variable "password_require_symbols" {
  description = "Require at least one symbol in password."
  type        = bool
  default     = true
}

variable "password_require_numbers" {
  description = "Require at least one number in password."
  type        = bool
  default     = true
}

variable "password_min_length" {
  description = "Password minimum length."
  type        = number
  default     = 14
}

variable "password_reuse_prevention" {
  description = "Number of passwords before allowing reuse."
  type        = number
  default     = 24
}

variable "password_max_age" {
  description = "Number of days before password expiration."
  type        = number
  default     = 90
}

variable "check_root_account_mfa_enabled" {
  description = "Enable root-account-mfa-enabled rule"
  type        = bool
  default     = false
}

variable "check_guard_duty" {
  description = "Enable guardduty-enabled-centralized rule"
  type        = bool
  default     = false
}

variable "check_rds_public_access" {
  description = "Enable rds-instance-public-access-check rule"
  type        = bool
  default     = false
}

variable "check_multi_region_cloud_trail" {
  description = "Enable multi-region-cloud-trail-enabled rule"
  type        = bool
  default     = false
}

variable "check_cloudtrail_enabled" {
  description = "Enable cloudtrail-enabled rule"
  type        = bool
  default     = true
}

variable "check_cloud_trail_encryption" {
  description = "Enable cloud-trail-encryption-enabled rule"
  type        = bool
  default     = false
}

variable "check_cloud_trail_log_file_validation" {
  description = "Enable cloud-trail-log-file-validation-enabled rule"
  type        = bool
  default     = false
}

variable "check_eip_attached" {
  description = "Enable eip-attached rule"
  type        = bool
  default     = false
}

variable "check_instances_in_vpc" {
  description = "Enable instances-in-vpc rule"
  type        = bool
  default     = true
}

variable "check_acm_certificate_expiration_check" {
  description = "Enable acm-certificate-expiration-check rule"
  type        = bool
  default     = true
}

variable "check_iam_password_policy" {
  description = "Enable iam-password-policy rule"
  type        = bool
  default     = true
}

variable "check_iam_group_has_users_check" {
  description = "Enable iam-group-has-users-check rule"
  type        = bool
  default     = true
}

variable "check_iam_user_no_policies_check" {
  description = "Enable iam-user-no-policies-check rule"
  type        = bool
  default     = true
}

variable "check_ec2_volume_inuse_check" {
  description = "Enable ec2-volume-inuse-check rule"
  type        = bool
  default     = true
}


variable "check_ec2_encrypted_volumes" {
  description = "Enable ec2-encrypted-volumes rule"
  type        = bool
  default     = true
}

variable "check_rds_storage_encrypted" {
  description = "Enable rds-storage-encrypted rule"
  type        = bool
  default     = true
}

variable "check_rds_snapshots_public_prohibited" {
  description = "Enable rds-snapshots-public-prohibited rule"
  type        = bool
  default     = true
}

variable "check_s3_bucket_public_write_prohibited" {
  description = "Enable s3-bucket-public-write-prohibited rule"
  type        = bool
  default     = true
}

variable "check_cloudwatch_log_group_encrypted" {
  description = "Enable cloudwatch-log-group-encryption rule"
  type        = bool
  default     = true
}

variable "check_iam_root_access_key" {
  description = "Enable iam-root-access-key rule"
  type        = bool
  default     = true
}

variable "check_ebs_snapshot_public_restorable" {
  description = "Enable ebs-snapshot-public-restorable rule"
  type        = bool
  default     = true
}

variable "check_vpc_default_security_group_closed" {
  description = "Enable vpc-default-security-group-closed rule"
  type        = bool
  default     = true
}

variable "check_s3_bucket_ssl_requests_only" {
  description = "Enable s3-bucket-ssl-requests-only rule"
  type        = bool
  default     = true
}

variable "check_mfa_enabled_for_iam_console_access" {
  description = "Enable mfa-enabled-for-iam-console-access rule"
  type        = bool
  default     = false
}

variable "check_restricted_ssh" {
  description = "Enable restricted-ssh rule"
  type        = bool
  default     = false
}

variable "check_pci-dss" {
  description = "Enable  PCI DSS 3.2.1 rules"
  type = bool
  default = false
}