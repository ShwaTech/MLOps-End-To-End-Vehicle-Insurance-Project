
output "iam_user_name" {
  description = "The created IAM user name"
  value       = module.iam_user.iam_user_name
}


# To Show It => Run $ terraform output iam_access_key
output "iam_access_key" {
  description = "Access Key ID"
  value       = module.iam_user.iam_access_key
  sensitive   = true
}

# To Show It => Run $ terraform output iam_secret_key
output "iam_secret_key" {
  description = "Secret access key"
  value       = module.iam_user.iam_secret_key
  sensitive   = true
}


output "s3_bucket_name" {
  description = "The created S3 bucket name"
  value       = module.s3_bucket.bucket_name
}

output "s3_bucket_arn" {
  description = "The ARN of the created S3 bucket"
  value       = module.s3_bucket.bucket_arn
}

