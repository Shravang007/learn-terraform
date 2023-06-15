#resource "aws_instance" "web" {
#  ami           = data.aws_ami.example.id
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "Test"
#  }
#}
#
#data "aws_ami" "example" {
#  owners      = ["752442278108"]
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#
#}



provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b5a2b5b8f2be4ec2"  # Update with the desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}

