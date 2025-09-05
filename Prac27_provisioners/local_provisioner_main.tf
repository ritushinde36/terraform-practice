//This is to run an single command
# resource "aws_instance" "terraform_EC2" {
#   ami = "ami-0182f373e66f89c85"
#   instance_type = "t2.micro"
#   count = 3

#   tags = {
#     Name = "Terraform_instance_${count.index}"
#   }

#   provisioner "local-exec" {
#     command = "echo Private IP : ${self.private_ip} >> EC2_Private_IPs"
#   }
# }



//This is to run multiple commands
# resource "aws_instance" "terraform_EC2" {
#   ami = "ami-0182f373e66f89c85"
#   instance_type = "t2.micro"
#   count = 3

#   tags = {
#     Name = "Terraform_instance_${count.index}"
#   }

#   provisioner "local-exec" {
#     command = "echo Instance ID : ${self.id} >> EC2_Information;echo Private IP : ${self.private_ip} >> EC2_Information;echo Instance arn : ${self.arn} >> EC2_Information"    
#   }

# }

