module "s3_prod" {
    source = "../../module/s3"
    bucket = var.bucket
    env=var.env
  
}