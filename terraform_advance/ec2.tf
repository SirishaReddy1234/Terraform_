module "ec2_prod" {
    source = "github.com/SirishaReddy1234/Terraform_/github_ec2"
    ami=var.ami
    instance_type=var.instance_type
    Name=var.Name
}