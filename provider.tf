provider "aws" {
  region = var.region
  /*  secret_key = var.AWS_ACCESS_KEY_ID
  access_key = var.AWS_SECRET_ACCESS_KEY*/
  version = "~> 3.0"
}

terraform {
  backend "s3" {
    bucket = "dinesh-tf-state"
    key    = "terraform-state"
    region = "us-east-1"
  }
}