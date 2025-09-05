resource "aws_security_group" "Terraform_SG" {
    name = var.security_group_name

    tags = {
      Name = var.security_group_name
    }
  
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls" {
  security_group_id = aws_security_group.Terraform_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

output "sg_ids" {
    value = [aws_security_group.Terraform_SG.id]
}