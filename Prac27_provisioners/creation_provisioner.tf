# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0e86e20dae9224db8"
#     instance_type = "t2.small"

#     provisioner "local-exec" {
#       command = "echo executing >> creation.txt"
#     }
# }