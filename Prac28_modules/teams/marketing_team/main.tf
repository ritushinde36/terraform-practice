module "EC2_mod" {
    source = "../../modules/EC2 module"
    instance_ami = "ami-0182f373e66f89c85"
    ins_type = "t2.large"
    instance_name = "Some_Instance"
    aws_sgs = module.SG_mod.sg_ids
}

module "SG_mod" {
    source = "../../modules/SG module"
  
}