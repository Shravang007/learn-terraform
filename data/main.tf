data "aws_ami" "example" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Centos"]
  }

  owners = ["752442278108"]
}

output "ami_id" {
  value = data.aws_ami.example.id
}
