terraform {
  required_version = "~> 0.12.0"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nlgordon"

    workspaces {
      prefix = "testing-"
    }
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

# Create a VPC
resource "aws_vpc" basic {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${terraform.workspace}-basic"
  }
}