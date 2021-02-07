provider "aws" {
    region = var.region
    secret_key = var.AWS_ACCESS_KEY
    access_key = var.AWS_SECRET_KEY
    version = 3.0.0
}