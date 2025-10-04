
# Security Group
resource "aws_security_group" "this" {
  name        = "${var.instance_name}-sg"
  description = "Allow SSH, HTTP, HTTPS"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Key Pair
resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh
}

# Save private key locally
resource "local_file" "private_key" {
  filename = "${path.module}/${var.key_name}.pem"
  content  = tls_private_key.this.private_key_pem
  file_permission = "0400"
}

# EC2 Instance
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.this.key_name
  vpc_security_group_ids = [aws_security_group.this.id]

  root_block_device {
    volume_size = var.disk_size
    volume_type = "gp3"
  }

  tags = {
    Name = var.instance_name
  }
}
