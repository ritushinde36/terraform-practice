resource "aws_instance" "Terraform_EC2" {
  ami = var.ins_ami
  instance_type = var.ins_type

  tags = {
    Name = var.ins_name
  }
}