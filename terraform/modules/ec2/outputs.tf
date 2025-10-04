
output "instance_public_ip" {
  value       = aws_instance.this.public_ip
  description = "Public IP of EC2"
}

output "instance_public_dns" {
  value       = aws_instance.this.public_dns
  description = "Public DNS of EC2"
}
