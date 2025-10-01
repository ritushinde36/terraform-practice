//Creating a single EC2 instnace
resource "aws_instance" "Terraform_Ec2"{
    ami = "ami-0ebfd941bbafe70c6"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform_Instance"
    }
}


//Creating 5 EC2 instances
resource "aws_instance" "Terraform_Ec2"{
    ami = "ami-0ebfd941bbafe70c6"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform_Instance"
    }
    count = 5
}

//creating multiple iam users -- this will error out
resource "aws_iam_user" "IAM_USER_TERRAFORM"{
    name = "developer_${count.index}"
    count = 3
}

//creatin multiple users using variable 
variable "iam_usernames" {
    type = list(string)
    description = "List of usernames for IAM"
    default = [ "John" , "Paul" , "Greg" ]
}

resource "aws_iam_user" "IAM_USER_TERRAFORM"{
    name = var.iam_usernames[count.index]
    count = 3
}


