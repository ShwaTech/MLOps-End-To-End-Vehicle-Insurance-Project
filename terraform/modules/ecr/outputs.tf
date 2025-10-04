
output "repository_uri" {
  value       = aws_ecr_repository.this.repository_url
  description = "ECR repository URI"
}
