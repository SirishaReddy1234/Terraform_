module "ec2nonprod" {
    source = "../../module/ec2"
    ami=var.ami
    instance_type = var.instance_type
    Name=var.Name

}
