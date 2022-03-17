resource "aws_s3_bucket" "tf-matt-s3-bucket" {
  bucket = "tf-matt-s3-bucket"
  force_destroy = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "tf-matt-versioning" {
  bucket = aws_s3_bucket.tf-matt-s3-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}