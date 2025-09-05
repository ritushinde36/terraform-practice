
provider "aws" {
  region = "ap-south-1"
}

module "EC2_Module" {
    source = "../../modules/EC2 module"
    instance_ami = "ami-078264b8ba71bc45e"
    aws_sgs = module.SG_Module.sg_ids
    # instance_region = "ap-south-1"
}


# module "EC2_Module" {
#     source = "../../modules/EC2 module"
#     instance_ami = "ami-0e86e20dae9224db8"
#     ins_type = "t2.small"
# }