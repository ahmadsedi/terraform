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

variable "pub_subnet_cidr" {
  type        = string
  description = "(Optional) CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "pri_subnet_cidr" {
  type        = string
  description = "(Optional) CIDR block for the private subnet"
  default     = "10.0.2.0/24"
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

variable "region" {
  type        = string
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "az" {
  type        = string
  description = "Availability zone in which vpc is placed in"
  default     = "us-east-1a"
}

variable "environment" {
  type = string
}