terraform {
  required_version = "~> 0.12.0"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nlgordon"

    workspaces {
      name = "dev"
    }
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

module "infrastructure" {
  source = "../infrastructure"
  environment = "dev"
}