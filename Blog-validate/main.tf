//checking for Invalid argument

//incorrect argument
# resource "aws_instance" "terraform_ec2" {
#     ami_id = "ami-063d43db0594b521b"
#     instance_type = "t2.micro"
#     tags = {
#       name = "terraform_ec2"
#     }
# }

//correct argument
# resource "aws_instance" "terraform_ec2" {
#     ami = "ami-063d43db0594b521b"
#     instance_type = "t2.micro"
#     tags = {
#       name = "terraform_ec2"
#     }
# }

//Checking for incorrect syntax

//Incorrect syntacx
# resource "aws_instance" "terraform_ec2" {
#     ami : "ami-063d43db0594b521b"
#     instance_type : "t2.micro"
#     tags : {
#       name = "terraform_ec2"
#     }
# }

//Correct syntax
# resource "aws_instance" "terraform_ec2" {
#     ami = "ami-063d43db0594b521b"
#     instance_type = "t2.micro"
#     tags = {
#       name = "terraform_ec2"
#     }
# }

// Checking for uneclared variable

//Incorrect way
# resource "aws_instance" "terraform_ec2" {
#     ami = var.ami_id
#     instance_type = "t2.micro"
#     tags = {
#       name = "terraform_ec2"
#     }
# }

//Correct way
variable "ami_id" {
    default = "ami-063d43db0594b521b"
  
}

resource "aws_instance" "terraform_ec2" {
    ami = var.ami_id
    instance_type = "t2.micro"
    tags = {
      name = "terraform_ec2"
    }
}




