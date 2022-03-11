terraform {
  backend "s3" {
    bucket = "sdmatt-tf-state"
    key    = "sdmatt-tf-state/tf-state"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "tf-matt-s3-bucket" {
  bucket = "tf-matt-s3-bucket"
  force_destroy = false

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}