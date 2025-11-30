variable "vpc_cidr" {
  type        = string
  description = "(Required) CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
  default     = "terraform.vpc"
}

variable "subnet_cidr" {
  type        = string
  description = "(Optional) CIDR block for the subnet"
  default     = "10.0.0.0/24"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone"
  default     = "us-east-1a"
}

variable "subnet_name" {
  type        = string
  default     = "terra-sub-pub-1"
  description = "The name of the subnet"
}

variable "igw_name" {
  type        = string
  description = "The name of the Internet Gateway"
  default     = "myIGW"
}

variable "environment" {
  type = string
}