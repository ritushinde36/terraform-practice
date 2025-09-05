resource "aws_instance" "Terraform_EC2" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform_EC2"
  }
}

resource "aws_security_group" "terraform_SG" {
  name        = "Terraform_SG"
  description = "This is a security group for Terraform_EC2"
  tags = {
    Name = "Terraform_SG"
  }
}


resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.terraform_SG.id
  cidr_ipv4         = ["0.0.0.0/0"]
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.terraform_SG.id
  cidr_ipv4         = ["0.0.0.0/0"]
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.terraform_SG.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.terraform_SG.id
  network_interface_id = aws_instance.Terraform_EC2.primary_network_interface_id
}
