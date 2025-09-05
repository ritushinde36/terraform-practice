//importing manyally created resource
import {
  to = aws_security_group.Manually_created
  id = "sg-0800763dd7fb3681c"
}

//created in terraform
resource "aws_security_group" "Terraform_SG" {
    name = "Terraform_SG"
    tags = {
        Name = "Terraform_SG"
    }
}
resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.Terraform_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}