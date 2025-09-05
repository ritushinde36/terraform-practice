terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }
}

provider "aws" {
}

resource "aws_instance" "terrafrom_instance" {
    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.micro"

    tags = {
        Name = "terrafrom_instance"
    }
}

output "terraform_instance_public_ip_address" {
    value = aws_instance.terrafrom_instance.public_ip
}

output "terraform_instance_public_ip_url" {
    value = "https://${aws_instance.terrafrom_instance.public_ip}:8080"
}

# output "terraform_instance_public_ip_address" {
#     value = aws_instance.terrafrom_instance
# }