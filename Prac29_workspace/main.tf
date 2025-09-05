locals {
  ins_type = {
    development = "t2.small",
    testing = "t2.medium",
    production = "t2.large"
  }
   in_name = {
    development = "Terraform_Development",
    testing = "Terraform_Testing",
    production = "Terraform_Production"
  }
}

resource "aws_instance" "Terraform_EC2" {
    ami = "ami-0182f373e66f89c85"
    instance_type = local.ins_type[terraform.workspace]

    tags = {
      Name = local.in_name[terraform.workspace]
    }
  
}