locals {
  common_tags = {
    env_name = var.environment
  }
}

resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags       = local.common_tags
}

resource "aws_subnet" "this" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone
  tags              = local.common_tags
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags   = local.common_tags
}