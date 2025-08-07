provider "aws" {
  region = "eu-west-2"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

  resource "aws_s3_bucket" "name" {
    bucket = "my-unique-bucket-terraform-demo-07-08"
    tags = {
        Name        = "My Unique Bucket for Terraform Demo"
        Environment = "Dev"
    }