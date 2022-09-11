output "aws_logs_bucket" {
  description = "ARN of the S3 bucket containing AWS logs."
  value       = aws_s3_bucket.aws_logs.arn
}