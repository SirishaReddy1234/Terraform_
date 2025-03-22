
#here we use map function to pick ami based on region
provider "aws" {
    region = var.region
  
}
variable "region" {
  default = "ap-south-1"
}

variable "my_map" {
  type = map(string)
  default = {
    ap-south-1 ="ami-0e35ddab05955cf57"
    us-west-2= "ami-0c94855ba95c71c8"
   us-east-1 = "ami-084568db4383264d4"
  }
}
resource "aws_instance" "name" {
    ami=lookup(var.my_map,var.region)
    instance_type = "t2.micro"
    tags = {
      Name="web2"
    }
   
}