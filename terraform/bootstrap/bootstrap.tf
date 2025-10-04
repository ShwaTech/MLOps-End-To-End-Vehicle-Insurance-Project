
## ===========================================================
## Terraform Bootstrap Configuration
## This configuration sets up the S3 bucket and DynamoDB table
## required for Terraform remote state management and locking.

## Commands -> 

# ```bash
# cd bootstrap
# terraform init
# terraform plan
# terraform apply
# ```

## ===========================================================


provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "shwa-mlops-terraform-states"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
