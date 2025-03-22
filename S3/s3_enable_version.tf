provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_s3_bucket" "example" {
  bucket = "bucket22032025"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}