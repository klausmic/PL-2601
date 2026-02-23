terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "kastro_terraform_bucket" {
  bucket = "kastro-terraform-bucket-2302206"
  acl    = "private"
}

output "s3_bucket_id" {
  value = aws_s3_bucket.kastro_terraform_bucket.id
}
