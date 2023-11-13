module "s3" {
  source = "git@github.com:etawong/s3-backend.git//s3-module?ref=v1.2.0"
}

#Backend configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "landmark-automation-etienne"
    region  = "us-west-2"
    key     = "s3/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-west-2"
}