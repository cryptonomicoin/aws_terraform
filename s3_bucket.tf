resource "aws_s3_bucket" "tf-matt-s3-bucket-bad" {
  bucket = "tf-matt-s3-bucket-bad"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "tf-matt-versioning" {
  bucket = aws_s3_bucket.tf-matt-s3-bucket-bad.id
  versioning_configuration {
    status = "Enabled"
  }
}