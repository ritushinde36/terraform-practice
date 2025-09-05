//Defining the provider

terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }
}

provider aws {
}

//Defining the security group

resource "aws_security_group" "terraform_security_group" {
    name = "terraform_security_group"
    description = "This is a security group that is created through terraform"

    tags = {
      Name = "terraform_security_group"
    }
}

//Defining the ingress rules

resource "aws_vpc_security_group_ingress_rule" "ssh_ingress_rule"{
    security_group_id = aws_security_group.terraform_security_group.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = 22
    to_port = 22
    ip_protocol = "tcp"
}


# resource "aws_vpc_security_group_ingress_rule" "tcp_ingress_rule" {
#     security_group_id = aws_security_group.terraform_security_group.id
#     cidr_ipv4 = "0.0.0.0/0"
#     from_port = 80
#     to_port = 100
#     ip_protocol = "tcp"
# }

data "aws_security_group" "statndard" {
    id = "sg-0651f9e24bd3ff6d9"
}

resource "aws_vpc_security_group_ingress_rule" "tcp_ingress_rule" {
    security_group_id = data.aws_security_group.statndard.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = 80
    to_port = 100
    ip_protocol = "tcp"
}

//Defining the egress rule

resource "aws_vpc_security_group_egress_rule" "all_traffic_egress_rule" {
    security_group_id = aws_security_group.terraform_security_group.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "-1" //this means all ports
}
