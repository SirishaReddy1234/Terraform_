provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5kdrpIiVCUJi0hgKR2wQL1MPqjyz/OM2NEdXiwnR8d9ANu04vT0+R5CgDXElkEROey/uYACAl61nhe0R7TAd7x7RQGxIE+lA3pZ/81HCuHW7CPVT9z3aj0UE7tfMuczeFAI4636ktssE5teRs8JPsodQSOyEJRi3eSQjYT0DzCkScOlar+qEU/7t1cKyuMinHb9sm2f7Kb435sMKWGM0l9UwJ4utgdDSKkghwHDnidoUL+ALQKgMhV/np1qLbgjbA9ew2EXPzDkerrXLUBFrON3oJvZMT9MhpFxleLWox6XEjRVRDm6EaNPhOW4SM7J9TgjpDW/eSrF/RzrnM8xeb DELL@TECH-SIRI"
}

resource "aws_instance" "web1" {
  ami           = "ami-05c179eced2eb9b5b"
  instance_type = "t2.micro"
  key_name = "aws_key_pair.deployer.key_name"
  depends_on = [aws_key_pair.deployer]

  tags = {
    Name = "HelloWorld"
  }
}
#for generating key pair need to run "ssh-keygen -t rsa -b 2048 -f testkey.pem" command now you get .pem and .pub file 
#copy that pub file content in public_key 
