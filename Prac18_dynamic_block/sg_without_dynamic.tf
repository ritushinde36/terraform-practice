/*
resource "aws_security_group" "Terraform_sg" {
  name = "Terraform_sg"

  ingress = [
    {
      from_port   = 1000
      to_port     = 1000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 1001
      to_port     = 1001
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 1002
      to_port     = 1002
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 1003
      to_port     = 1003
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 1004
      to_port     = 1004
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  ]

  egress = [
    {
      from_port   = 3000
      to_port     = 3000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 3001
      to_port     = 3001
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 3002
      to_port     = 3002
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 3003
      to_port     = 3003
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 3004
      to_port     = 3004
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]


}

#ingress = 1000, 1001, 1002, 1003, 1004
#egress = 3000, 3001, 3002, 3003, 3004 

*/