provider "aws" {
  region = "ap-south-1"
}

# Create an EC2 instance with user data
resource "aws_instance" "example" {
  ami           = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"
  key_name = "key1"# I attached existing key pair which is .ppk
  # User data script
  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y apache2
              EOF
}
