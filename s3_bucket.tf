resource "aws_s3_bucket" "tf-matt-s3-bucket" {
  bucket = "tf-matt-s3-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}