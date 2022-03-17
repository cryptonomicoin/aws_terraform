provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sdmatt-tf-state"
    region = "eu-east-1"
  }
}