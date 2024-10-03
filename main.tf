provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
  ami           = "ami-04823729c75214919"
  instance_type = "t2.micro"
  key_name      = "newkp"
  vpc_security_group_ids = ["sg-0a96cf162f9dd4d2f"]
  tags = {
    Name = " rahaminstance"
  }
}
