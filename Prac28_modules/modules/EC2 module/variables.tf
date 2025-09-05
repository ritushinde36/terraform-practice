variable "instance_ami" {
    type = string
    default = "ami-0182f373e66f89c85"
}

variable "ins_type" {
    type = string
    default = "t2.micro"
}

variable "instance_name" {
    type = string
    default = "Terraform_EC2"
}

variable "instance_region" {
    type = string
    default = "us-east-1"
}

variable "aws_sgs" {
}