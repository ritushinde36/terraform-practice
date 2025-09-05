# data "aws_instance" "Development_EC2"{
#     filter {
#       name = "tag:Environment"
#       values = ["Development"]
#     }
# }

# output "Development_instance_type" {
#     value = data.aws_instance.Development_EC2.instance_type
# }

data "aws_instances" "Production_EC2"{
    filter {
      name = "tag:Environment"
      values = ["Production"]
    }
}

output "Production_instance_type" {
    value = data.aws_instances.Production_EC2
}