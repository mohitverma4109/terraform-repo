provider "aws" {
region = "ap-south-1"
}
resource "aws_instance" "one" {
  count         = 4
  ami           = "ami-0e0e417dfa2028266"
  instance_type = "t2.medium"
  key_name      = "Mohit"
  vpc_security_group_ids = ["sg-0be48c52ba8131e2e"]
  tags = {
    Name = var.instance_name[count.index]
  }
}
variable "instance_name" {
default = ["tomcat", "nexus", "jenkins", "slave"]
}
