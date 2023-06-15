data "aws_ami" "example" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Centos"]
  }

  owners = ["self"]
}

output "ami_id" {
  value = data.aws_ami.example.id
}
