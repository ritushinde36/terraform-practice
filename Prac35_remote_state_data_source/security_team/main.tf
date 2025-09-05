//here we are defing the network state
data "terraform_remote_state" "network_team_state" {
  backend = "s3"

  config = {
    bucket = "terraformbackendritushinde"
    key = "networking_team/networking_team_terraform.tfstate"
    region = "us-east-1"

  }
}

resource "aws_security_group" "Terraform_SG" {
    name = "Terraform_SG"
    tags = {
        Name = "Terraform_SG"
    }
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.Terraform_SG.id
  cidr_ipv4         = "${data.terraform_remote_state.network_team_state.outputs.eip_address}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}