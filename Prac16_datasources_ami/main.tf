data "aws_ami" "my_ami_image" {
    most_recent = true
    owners = [ "amazon" ]
    filter {
      name = "name"
      values = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*" ]
    }
}

output "recent_ami" {
    value = "The most recent AMI id is ${data.aws_ami.my_ami_image.id}"
  
}

resource "aws_instance" "Terraform_EC2" {
    ami = data.aws_ami.my_ami_image.image_id
    instance_type = "t2.medium"

    tags = {
        Name = "Terraform_EC2"
    }
  
}