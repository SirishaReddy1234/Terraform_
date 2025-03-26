module "ec2prod" {
    source = "../../module/ec2"
    ami=var.ami
    instance_type = var.instance_type
   Name=var.Name
  
}