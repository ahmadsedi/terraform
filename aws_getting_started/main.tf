terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "ec2_module" {
  source      = "./modules/ec2"
  environment = var.environment
}

module "s3_module" {
  source      = "./modules/s3"
  environment = var.environment
}

module "vpc_module" {
  source      = "./modules/vpc"
  environment = var.environment
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "terraform-demo-backend-1355"
    key     = "simple-aws-practice"
    region  = "us-east-1"
    encrypt = true
  }
}
