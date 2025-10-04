
variable "vpc_id" {
  description = "VPC ID where the EC2 instance will be created"
  type        = string
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}

variable "disk_size" {
  type        = number
  default     = 30
}
