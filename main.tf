terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
provider "aws" {
  region = "ap-southeast-2"
}
resource "aws_instance" "web" {
  ami		= "ami-0310483fb2b488153"
  instance_type = "t2.micro"
  key_name = "mykeyjenkins2023"
  count=3
  user_data = "${file("script1.sh")}"
}
