//Defining all the types of instances that we want to create in a set
# variable "instance_types" {
#     type = set(string)
#     default = [ "t2.micro" ,"t2.small" , "t2.nano" , "t2.medium" , "t2.large" ]
# }

# //Creating the EC2 instances
# resource "aws_instance" "terraform_ec2" {
#     ami = "ami-063d43db0594b521b"
#     for_each = var.instance_types
#     instance_type = each.value
#     tags = {
#       Name = "terraform_ec2"
#     }
# }

//Defining all the types in the instances in a map

variable "instance_types" {
    type = map(string)
    default = {
      "DEV" = "t2.small"
      "TEST" = "t2.medium"
      "PROD" = "t2.large"
    }
  
}

//Creating the EC2 instances
resource "aws_instance" "terraform_ec2" {
    ami = "ami-063d43db0594b521b"
    for_each = var.instance_types
    instance_type = each.value
    tags = {
      Name = each.key
    }
}
