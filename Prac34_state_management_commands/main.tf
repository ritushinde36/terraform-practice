# resource "aws_instance" "Terraform_EC2" {
#     ami = "ami-0182f373e66f89c85"
#     instance_type = "t2.micro"
#     vpc_security_group_ids = [ aws_security_group.Terraform_SecurityGroup.id ]

#     tags = {
#       Name = "Terraform_EC2"
#     } 
# }

resource "aws_security_group" "Terraform_SecurityGroup_Development" {
  name        = "Terraform_SecurityGroup"
  tags = {
    Name = "Terraform_SecurityGroup"
  }
}


# resource "aws_vpc_security_group_ingress_rule" "allow_https" {
#   security_group_id = aws_security_group.Terraform_SecurityGroup_Development.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 443
#   ip_protocol       = "tcp"
#   to_port           = 443
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_http" {
#   security_group_id = aws_security_group.Terraform_SecurityGroup_Development.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 80
#   ip_protocol       = "tcp"
#   to_port           = 80
# }