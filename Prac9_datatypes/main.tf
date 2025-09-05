# resource "aws_iam_user" "terraform_iam_user" {
#     name = var.iam_user_name
# }

//Creating security group 1
# resource "aws_security_group" "security_group_1" {
#     name = "security_group_1"
#     tags = {
#         Name = "security_group_1"
#     }
# }

//Creating security group 2
# resource "aws_security_group" "security_group_2" {
#     name = "security_group_2"
#     tags = {
#         Name = "security_group_2"
#     }
# }
//Creating the EC2

# resource "aws_instance" "Terraform_EC2" {
#     ami = "ami-0e86e20dae9224db8"
#     instance_type = "t2.micro"
#     tags = var.instance_tags
#     vpc_security_group_ids = [aws_security_group.security_group_1.id , aws_security_group.security_group_2.id]
# }