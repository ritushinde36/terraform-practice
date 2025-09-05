resource "aws_instance" "Terraform_EC2" {
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  count = 3
  tags = {
    Name = "Terraform_EC2_${count.index}"
  }
}

output "EC2_id" {
    value = aws_instance.Terraform_EC2[*].id
}

output "EC2_arn" {
  value = aws_instance.Terraform_EC2[*].arn
}