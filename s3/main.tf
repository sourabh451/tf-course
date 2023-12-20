terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "altair" {
  bucket = "sourabh-patil-27"
  tags = {
    "num" = var.num_var
  }
}

