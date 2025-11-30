variable "bucket_name" {
  type        = string
  description = "The neame of the S3 bucket"
  default     = "bucket-4-terraform-demo-1403"
}

variable "environment" {
  type        = string
  description = "Target environment in which the terraform will be applied to"
  default     = "Development"
}