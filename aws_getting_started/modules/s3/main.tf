locals {
  common_tags = {
    env_name = var.environment
  }
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags   = local.common_tags
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  # enable lifecycle rules
  rule {
    id      = "log"
    status = "Enabled"  

    noncurrent_version_transition {
      noncurrent_days          = 30
      storage_class = "GLACIER"
    }

    noncurrent_version_expiration {
      noncurrent_days = 365
    }
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}