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

variable "env" {
  description = "Environment name (dev or prd)"
  type        = string
}

# resource "aws_sns_topic" "pipeline-1" {
#   name = "pipeline-1-topic-${var.env}"
#   tags = {
#     Environment = var.env
#     pipeline    = "pipeline-1-${var.env}"
#     owner       = "team-a-${var.env}"
#     deployed    = "terraform"
#   }
# }