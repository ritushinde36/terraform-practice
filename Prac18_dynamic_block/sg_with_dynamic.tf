variable "ingress_ports" {
  type    = list(number)
  default = [1000, 1001, 1002, 1003, 1004]
}

variable "egress_ports" {
  type    = list(number)
  default = [3000, 3001, 3002, 3003, 3004]
}

variable "sg_tags" {
  type = map
  default = {               
    Name             = "Terraform SG"
    Environment      = "Development"
    Owner            = "Ritu Shinde"
    Application_Name = "Marketing"
    date             = "1st oct"
  }
}

resource "aws_security_group" "Terraform_sg" {
  name        = "Terraform_sg"
  description = "Terraform sg"

  #   dynamic "ingress" {
  #     for_each = var.ingress_ports
  #     content {
  #       from_port   = ingress.value
  #       to_port     = ingress.value
  #       protocol    = "tcp"
  #       cidr_blocks = ["0.0.0.0/0"]
  #     }

  #   }

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = port_in
    content {
      from_port   = port_in.value
      to_port     = port_in.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }

  #   dynamic "egress" {
  #     for_each = var.egress_ports
  #     content {
  #       from_port   = egress.value
  #       to_port     = egress.value
  #       protocol    = "tcp"
  #       cidr_blocks = ["0.0.0.0/0"]
  #     }
  #   }

  dynamic "egress" {
    for_each = var.egress_ports
    iterator = port_eg
    content {
      from_port   = port_eg.value
      to_port     = port_eg.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

    tags = {
      Name = "Terraform SG"
      Environment = "Development"
      Owner = "Ritu Shinde"
      Application_Name = "Marketing"
      date = "1st oct"
  }

#   dynamic "tags" {
#     for_each = var.sg_tags
#     iterator = tag
#     content {
#       Name             = tag.value["Name"]
#       Environment      = tag.value["Environment"]
#       Owner            = tag.value["Owner"]
#       Application_Name = tag.value["Application_Name"]
#       date             = tag.value["date"]
#     }

#   }



}