// Creating a resource through terraform
resource "aws_instance" "Terraform_EC2" {
    ami = "ami-0ebfd941bbafe70c6"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform_EC2"
    }
}

//getting the deatils of the resource created outside of terraform
data "aws_instance" "Manual_EC2"{
    instance_id = "i-08417c6532de9f002"
}

//creating a security group
resource "aws_security_group" "Terraform_SG" {
    name = "Terraform_SG"
    tags = {
        name = "Terraform_SG"
    }
}

//attaching the security group to the resource created outside of terraform
resource "aws_network_interface_sg_attachment" "Manual_EC2_SG_attachment" {
    security_group_id = aws_security_group.Terraform_SG.id
    network_interface_id = data.aws_instance.Manual_EC2.network_interface_id
}

//Get the production EC2 details
data "aws_instances" "Production_instances" {
    filter {
      name = "tag:Environment"
      values = ["Production"]
    }
}

output "Production_instance_id" {
    value = data.aws_instances.Production_instances.ids
}