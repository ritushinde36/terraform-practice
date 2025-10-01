//Creating an EC2
resource "aws_instance" "TF_instance" {
    ami = var.ins_ami
    instance_type = var.ins_type
    tags = {
      Name = "${var.ins_name}_${var.ins_env}" 
    }
}



