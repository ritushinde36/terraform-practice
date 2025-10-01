variable "ins_ami" {
    default = "ami-063d43db0594b521b"
    type = string
    description = "AMI ID for the EC2 instance in us-east-1 region"
}

variable "ins_type" {
    type = string
    description = "The instance type"
}

variable "ins_name" {
    default = "web_server"
    type = string
    description = "The name of the server"
}

variable "ins_env" {
    type = string
    description = "Environment in which this server can be deployed in"
}