provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "web" {
    ami=var.ami
    instance_type = var.instance
    count=var.instance_count
    tags = {
      Name="web${count.index}"
    }

  
}
variable "ami" {
    default="ami-05c179eced2eb9b5b"
  
}
variable "instance" {
    default = "t2.micro"
  
}
variable "instance_count" {
    default = 2
}
