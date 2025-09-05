resource "aws_instance" "Terraform_EC2" {
  ami = "ami-0182f373e66f89c85"
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = "Terraform_EC2"
  }
}

resource "time_sleep" "waitfor5mins" {
    create_duration = "300s"
  
}