# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0182f373e66f89c85"
#     instance_type = "t2.micro"

#     tags = {
#       Name = "Terraform_EC2"
#     }   
# }

resource "aws_instance" "terraform_EC2" {
    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.small"

    tags = {
      Name = "Terraform_EC2"
    }  

    lifecycle {
      ignore_changes = all
    }
}

//old ami
# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0182f373e66f89c85"
#     instance_type = "t2.micro"

#     tags = {
#       Name = "Terraform_EC2"
#     }   
# }



//new ami
# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0e86e20dae9224db8"
#     instance_type = "t2.micro"

#     tags = {
#       Name = "Terraform_EC2"
#     }   
# }


//create before destroy
# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0e86e20dae9224db8"
#     instance_type = "t2.micro"

#     tags = {
#       Name = "Terraform_EC2"
#     }   

#     lifecycle {
#       create_before_destroy = true
#     }
# }

###################################################

# resource "aws_instance" "terraform_EC2" {
#     ami = "ami-0e86e20dae9224db8"
#     instance_type = "t2.medium"

#     tags = {
#       Name = "Terraform_EC2"
#     }   

#     lifecycle {
#       prevent_destroy = true
#     }
# }