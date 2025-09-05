resource "aws_instance" "Terraform_EC2" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.large"
  tags = {
    Name = "Terraform_EC2_production"
  }
}