terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }
}

provider "aws" {
}

resource "aws_eip" "terraform_elastic_ip" {
    domain = "vpc"
    instance = aws_instance.terraform_ec2.id
}

resource "aws_instance" "terraform_ec2" {
    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform_ec2"
    }
}


resource "aws_security_group" "terraform_security_group" {
    name = "terraform_security_group"
    description = "This is a security group that is created with terraform"

    tags = {
        Name = "terraform_security_group"
    }
}

resource "aws_vpc_security_group_ingress_rule" "terraform_https_rule" {
    security_group_id = aws_security_group.terraform_security_group.id
    from_port = 80
    to_port = 80
    ip_protocol = "tcp"
    cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "terraform_ssh_rule" {
    security_group_id = aws_security_group.terraform_security_group.id
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
    cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "terraform_elastic_rule" {
    security_group_id = aws_security_group.terraform_security_group.id
    from_port = 80
    to_port = 80
    ip_protocol = "tcp"
    cidr_ipv4 = "${aws_eip.terraform_elastic_ip.public_ip}/32"
}





