data "aws_ami" "workstation" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  owners = ["752442278108"]
}

output "ami_id" {
  value = data.aws_ami.example.id
}
