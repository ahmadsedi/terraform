locals {
  common_tags = {
    env_name = var.environment
  }
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = local.common_tags
}