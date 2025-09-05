provider "aws" {
    region = "us-east-1"
}

module "EC2_creation" {
    source = "./modules/EC2 module"
    instance_name =  "Refrencing_module_ec2"
    ins_type = "t2.small"
    instance_ami = "ami-0182f373e66f89c85" 
}

resource "aws_eip" "Terraform_EIP" {
    domain = "vpc"
    instance = module.EC2_creation.instance_id
    # instance = module.EC2_creation.id

  
}