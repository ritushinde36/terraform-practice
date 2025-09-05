# resource "aws_instance" "Terraform_Ec2"{
#     ami = "ami-0ebfd941bbafe70c6"
#     instance_type = "t2.micro"
#     tags = {
#         Name = "Terraform_Instance_${count.index}"
#     }
#     count = 5
# }

# resource "aws_iam_user" "IAM_USER_TERRAFORM"{
#     name = "engineer_${count.index}"
#     count = 3
# }

variable "usernames" {
    default = ["lewis","Angie","Pam","Kevin","Jim" ]
    type = list(string)
    description = "This is the list of users that need to be associated with an iam user"
}

resource "aws_iam_user" "AWS_USERS" {
    name = var.usernames[count.index]
    count = 3
}
