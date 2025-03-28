terraform {
  backend "s3" {
    bucket         = "devops-aws-terraform-state-007"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "devops-aws-remote-table"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.assume_role.region
  assume_role {
    role_arn = var.assume_role.role_arn
  }
  default_tags {
    tags = var.tags
  }
}
