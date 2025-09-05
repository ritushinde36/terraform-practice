# variable "instance_types1" {
#   type = list(string)
#   default = [ "t2.medium", "t2.nano", "t2.micro", "t2.small", "t2.large" ]
  
# }

# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0182f373e66f89c85"
#     instance_type = var.instance_types1[count.index]
#     count = 5

#     tags = {
#       Name = "Terraform_EC2"
#     }   
# }


# variable "instance_types" {
#   type = set(string)
#   default = [ "t2.medium", "t2.nano", "t2.micro", "t2.small", "t2.large" ]
# }

# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0182f373e66f89c85"
#     for_each = var.instance_types
#     instance_type = each.value

#     tags = {
#       Name = "Terraform_EC2"
#     }   
# }

variable "instance_types" {
  type = map(string)
  default = {
    "dev" = "t2.nano"
    "test" = "t2.micro"
    "prod" = "t2.small"
  }
}

resource "aws_instance" "terraform_EC2" {
    ami = "ami-0182f373e66f89c85"
    for_each = var.instance_types
    instance_type = each.value
    tags = {
      Name = each.key
    }   
}
