variable "iam_user_name" {
  description = "IAM username to create"
  type        = string
}


variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "block_public_acls" {
  description = "Disable or enable block public ACLs"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Disable or enable block public policy"
  type        = bool
  default     = true
}


variable "iam_user_name_ci_cd" {
  description = "IAM username for CI/CD operations"
  type        = string
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  type        = string
}

variable "ec2_instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "Key pair name for EC2 instance"
  type        = string
}

variable "ec2_disk_size" {
  description = "Disk size (in GB) for the EC2 instance"
  type        = number
  default     = 30
}


