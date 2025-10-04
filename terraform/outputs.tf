
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



output "iam_user_access_key_ci_cd" {
  value     = module.iam_user_ci_cd.iam_access_key_ci_cd
  sensitive = true
}

output "iam_user_secret_key_ci_cd" {
  value     = module.iam_user_ci_cd.iam_secret_key_ci_cd
  sensitive = true
}

output "ecr_repo_uri" {
  value = module.ecr_repo.repository_uri
}

output "ec2_public_ip" {
  value = module.ec2_instance.instance_public_ip
}

output "ec2_public_dns" {
  value = module.ec2_instance.instance_public_dns
}


