terraform {
  backend "s3" {
    bucket = "terraform-74"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

output "demo" {
  value = "Hello Shravan"

}