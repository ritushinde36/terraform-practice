terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
}

resource "aws_instance" "Terraform_EC2" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
}