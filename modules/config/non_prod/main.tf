module "s3nonprod" {
    source = "../../module/s3"
    bucket = var.bucket
    env=var.env
  
}