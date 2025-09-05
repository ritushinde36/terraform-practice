# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0182f373e66f89c85"
#     instance_type = "t2.micro"

#     provisioner "local-exec" {
#         command = "echo hello world >> file.txt"
#     }

#     provisioner "local-exec" {
#         command = "echo hello mars >> file.txt"
#     }

#     provisioner "local-exec" {
#         command = "echo hello saturn >> file.txt"
      
#     }
# }