// since I am not providing the alias here, it will be created in the default location of us-east-1
resource "aws_security_group" "Terraform_SG1" {
    name = "Terraform_SG_1"
    tags = {
      Name = "Terraform_SG_1"
    }
}

// I want this resource to be created in mumbai region (ap-south-1)
resource "aws_security_group" "Terraform_SG2" {
    provider = aws.mumbai
    name = "Terraform_SG_2"
    tags = {
      Name = "Terraform_SG_2"
    }
}

// I want this resource to be created in singapore region (ap-southeast-1)
resource "aws_security_group" "Terraform_SG3" {
    provider = aws.singapore
    name = "Terraform_SG_3"
    tags = {
      Name = "Terraform_SG_3"
    }
  
}