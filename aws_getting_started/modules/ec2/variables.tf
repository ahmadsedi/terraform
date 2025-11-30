
variable "environment" {
    type = string
    description = "Target environment in which the terraform will be applied to"
    default = "Development"
}

variable "ami_id" {
  type        = string
  description = "(Optional) Image of the EC2 Instance"
  default     = "ami-0fa3fe0fa7920f68e"
}

variable "instance_type" {
  type        = string
  description = "(Optional) Instance type of the EC2 instance"
  default     = "t3.micro"
}