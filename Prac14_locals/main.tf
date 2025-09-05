variable "resource_tags" {
    default = {
        TeamName = "Marketing"
    }
}

variable "TeamName" {
    default = "Engineering"
  
}

variable "SG_name" {
    type = string
    default = "SG_Development"
  
}

variable "EC2_name" {
    type = string
    default = "EC2_Development"
}

locals {
    comman_tags = {
        TeamName = "Sales"
    }
    EC2_tags = {
        TeamName = var.TeamName
        Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
        Name = var.EC2_name

    }
    SG_tags = {
        TeamName = var.TeamName
        Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
        Name = var.SG_name
    }
    
}

resource "aws_instance" "Terraform_EC2" {
    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.micro"
    count = 3
    tags = local.EC2_tags
}

resource "aws_security_group" "Terraform_security_group" {
    name = "Terraform_security_group"
    tags = local.SG_tags
}