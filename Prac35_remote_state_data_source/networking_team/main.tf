resource "aws_eip" "Terraform_eip" {
  domain = "vpc"
}

output "eip_address" {
  value = resource.aws_eip.Terraform_eip.public_ip
}