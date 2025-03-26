terraform {
  backend "s3" {
    bucket = "bucket26032025"
    key    = "state_file/terraform.state"
    region = "ap-south-1"
    dynamodb_table = "terraform-state-locks-3jul"
  }
}