provider "aws" {
region = "ap-south-1"
}
resource "aws_instance" "one" {
  ami           = "ami-078264b8ba71bc45e"
  instance_type = "t2.micro"
  key_name      = "Mohit"
  vpc_security_group_ids = ["sg-0be48c52ba8131e2e"]
  tags = {
    Name = "server-1"
  }
}
