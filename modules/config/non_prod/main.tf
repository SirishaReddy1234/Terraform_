module "s3nonprod" {
    source = "../../../modules3"
    bucket = var.bucket
    env=var.env
  
}
