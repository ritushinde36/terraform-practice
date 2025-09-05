variable "env" {
    default = "dev"
}

# variable "env" {
#     default = "prod"
# }

# variable "region" {
#     default = "us-east-1"
# }

variable "region" {
    default = "us-west-1"
}


resource "aws_instance" "Terraform_EC2" {
    ami = "ami-0ebfd941bbafe70c6"
    instance_type = var.env == "dev" && var.env == "us-west-1"  ? "t2.small" : "t2.large"
  
}