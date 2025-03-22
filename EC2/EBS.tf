provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1b"
  size              = 1

  tags = {
    Name = "Web_Ebs"
  }
}

resource "aws_instance" "name" {
    ami="ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"
    tags = {
      Name="web2"
    }
   
  
}

resource "aws_volume_attachment" "example" {
  device_name  = "/dev/sdh"
  instance_id = aws_instance.name.id
  volume_id    = aws_ebs_volume.example.id
}