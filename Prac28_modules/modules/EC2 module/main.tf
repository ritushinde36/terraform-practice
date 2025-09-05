
provider "aws" {
  region = var.instance_region
}

resource "aws_instance" "Terraform_resource" {
    ami = var.instance_ami
    instance_type = var.ins_type
    tags = {
      Name = var.instance_name
    }
    vpc_security_group_ids = var.aws_sgs
}

output "instance_id" {
    value = aws_instance.Terraform_resource.id
}

# resource "aws_instance" "Terraform_resource" {
#     ami = "ami-0182f373e66f89c85"
#     instance_type = "t2.micro"
#     tags = {
#       Name = "Terraform_EC2"
#     }
# }