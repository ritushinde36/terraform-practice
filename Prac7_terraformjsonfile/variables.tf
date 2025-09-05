variable "instance_ami" {
    type = string
    description = "This is the AMI that is used by the EC2 instance"
}

variable "instance_type" {
    # default = "t2.nano" 
    type = string
    description = "This is the instance type used by the EC2 instance"
}

variable "instance_name" {
    type = string
    description = "This is the instance name used by the EC2 instance"
}

