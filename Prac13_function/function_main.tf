variable "EC2_names" {
    type = list(string)
    description = "This is the list of EC2 instances that need to be created"
    default = [ "EC2_Development", "EC2_Staging" , "EC2_Production" ]
}

variable "ami" {
    type = map(string)
    description = "This is the ami that will be used in the EC2 based on the region"
    default = {
      "us-east-1" = "ami-0ebfd941bbafe70c6",
      "us-west-1" = "ami-047d7c33f6e7b4bc4",
      "us-east-2" = "ami-037774efca2da0726",
      "us-west-2" = "ami-08d8ac128e0a1b91c"
    } 
}

variable "region" {
    type = string
    description = "This is the region where you want to create your resources"
    default = "us-east-1"
}

variable "instance_type_EC2" {
    type = list(string)
    description = "This is the list of instance types that need to created as per your environment"
    default = [ "t2.small" , "t2.medium" , "t2.large"]
}

resource "aws_instance" "Terraform_EC2" {
    ami = lookup(var.ami,var.region)
    instance_type = var.instance_type_EC2[count.index]
    count = length(var.EC2_names)

    tags = {
      Name = element(var.EC2_names,count.index)
      Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
    }
  
}


