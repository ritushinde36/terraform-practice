variable "EC2_instance_type" {
    default = ["t2.micro","t2.small","t2.medium"]
    type = list
  
}

variable "lis" {
    default = ["1","2","3"]
    type = list(number)
}

output "list_num" {
    value = var.lis
  
}

variable "amis" {
    type = map
    default = {
        "amazon" = "ami-0ebfd941bbafe70c6",
        "ubuntu" = "ami-0e86e20dae9224db8",
        "redhat" = "ami-123345789"
    }
}

resource "aws_instance" "micro_amazon"{
    ami = var.amis["amazon"]
    instance_type = var.EC2_instance_type[0]
    tags = {
        Name = "micro_amazon"
    }
}

resource "aws_instance" "medium_ubuntu" {
    ami = var.amis["ubuntu"]
    instance_type = var.EC2_instance_type[2]
    tags = {
        Name = "medium_ubuntu"
    }
  
}


