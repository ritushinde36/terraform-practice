# variable "iam_user_name" {
#     default = 172404
#     type = number
#     description = "The iam name of the user should be an employee id"
# }

# variable "some_value" {
#     type = list
#     default = ["Hello", 1 , true, "world"]
# }

# variable "some_value" {
#     type = list(string)
#     default = ["Hello", 1 , true, "world"]
# }

# output "output_of_some_value" {
#     value = var.some_value  
# }

# variable "instance_tags" {
#     type = map
#     description = "this is the tags associated with the EC2"
#     default = {
#         Name = "EC2_Terraform"
#         Environment = "Development"
#         Department = "Sales"
#     }
# }

variable "set_var" {
    default = ["hello","world", "India", "hello"]
    type = set(string)
}

output "set_output" {
    value = var.set_var
}