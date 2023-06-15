resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = "Test"
  }
}

data "aws_ami" "example" {
  owners      = ["752442278108"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}
