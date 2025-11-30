locals {
  common_tags = {
    env_name = var.environment
  }
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags   = local.common_tags

  #enable versioning
  versioning {
    enabled = true
  }

  # enable lifecycle rules
  lifecycle_rule {
    id      = "log"
    enabled = true

    transition {
      days          = 30
      storage_class = "GLACIER"
    }

    expiration {
      days = 365
    }
  }
}