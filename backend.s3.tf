terraform {
  backend "s3" {
  }
}

# terraform {
#   backend "s3" {
#     bucket = "my-backend-bucket-for-statefile"
#     key    = "environments/${var.env}/terraform.tfstate"
#     region = "eu-west-2"
#     encrypt = true
#   }
# }
