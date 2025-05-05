module "s3nonprod" {
    source = "../../modules/modules3"
    bucket = var.bucket
    env=var.env
  
}
