resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket
    tags = {
      name="my_bucket"
      Environment=var.env
    }
  
}