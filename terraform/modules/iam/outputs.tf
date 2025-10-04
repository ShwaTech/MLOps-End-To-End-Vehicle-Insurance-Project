
output "iam_user_name" {
  description = "IAM user name => "
  value       = aws_iam_user.this.name
}

output "iam_access_key" {
  description = "Access key ID => "
  value       = aws_iam_access_key.this.id
  # sensitive   = true
}

output "iam_secret_key" {
  description = "Secret access key => "
  value       = aws_iam_access_key.this.secret
  # sensitive   = true
}
