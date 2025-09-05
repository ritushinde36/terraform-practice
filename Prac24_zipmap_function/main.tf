resource "aws_instance" "terraform_EC2" {
    ami = "ami-0182f373e66f89c85"
    instance_type = "t2.micro"
    count = 3

    tags = {
      Name = "Terraform_EC2_${count.index}"
    }
}

output "EC2_id" {
    value = aws_instance.terraform_EC2[*].id
}


output "EC2_arn" {
    value = aws_instance.terraform_EC2[*].arn
}

output "id_arn" {
    value = zipmap(aws_instance.terraform_EC2[*].id,aws_instance.terraform_EC2[*].arn)

}
