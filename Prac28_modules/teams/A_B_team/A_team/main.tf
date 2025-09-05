data "aws_security_group" "sg" {
  name = "EC2_SG"
}

module "A_EC2" {
    source = "../../../modules/EC2 module"
    ins_type = "t2.micro"
    instance_ami = "ami-0182f373e66f89c85"
    instance_name = "A_EC2"
    aws_sgs = [data.aws_security_group.sg.id]
}