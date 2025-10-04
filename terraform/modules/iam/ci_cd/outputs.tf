
output "iam_user_name_ci_cd" {
  value       = aws_iam_user.this.name
  description = "IAM user name for CI/CD"
}

output "iam_access_key_ci_cd" {
  value       = aws_iam_access_key.this.id
  sensitive   = true
}

output "iam_secret_key_ci_cd" {
  value       = aws_iam_access_key.this.secret
  sensitive   = true
}
