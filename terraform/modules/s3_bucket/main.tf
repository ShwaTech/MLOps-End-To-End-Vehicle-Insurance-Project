
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  force_destroy = true # allows deleting even if bucket has objects
}

# Public Access Block configuration
resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls   = var.block_public_acls
  block_public_policy = var.block_public_policy
  restrict_public_buckets = true
  ignore_public_acls      = true
}