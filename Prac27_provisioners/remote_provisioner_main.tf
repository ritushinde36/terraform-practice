# resource "aws_security_group" "nginx_security_group" {
#     name = "nginx_security_group"
#     description = "This security group is to allow ssh and http requests from anywhere"

#     tags = {
#       Name = "nginx_security_group"
#     }
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
#     security_group_id = aws_security_group.nginx_security_group.id
#     cidr_ipv4 = "0.0.0.0/0"
#     from_port = 22
#     to_port = 22
#     ip_protocol = "tcp"
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_https" {
#     security_group_id = aws_security_group.nginx_security_group.id
#     cidr_ipv4 = "0.0.0.0/0"
#     from_port = 80
#     to_port = 80
#     ip_protocol = "tcp"
# }

# resource "aws_instance" "terraform_EC2" {
#   ami = "ami-0182f373e66f89c85"
#   instance_type = "t2.micro"
#   key_name = "ec2_connection_terraform"
#   vpc_security_group_ids = [aws_security_group.nginx_security_group.id]


#   tags = {
#     Name = "Terraform_instance"
#   }

#   connection {
#     type = "ssh"
#     user = "ec2-user"
#     private_key = file("${path.module}/ec2_connection_terraform.pem")
#     host = self.public_ip
#   }
  

#   provisioner "remote-exec" {
#     inline = [ 
#         "sudo apt-get update",
#         "sudo yum -y install nginx",
#         "sudo systemctl start nginx"
#      ]
#   }

  
# }