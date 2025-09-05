# resource "aws_iam_user" "Jim" {
#     name = "Jim"
# }

# resource "aws_iam_user" "Pam" {
#     name = "Pam"
# }

# resource "aws_iam_user" "Mike" {
#     name = "Mike"
# }

# resource "aws_iam_user" "Steve" {
#     name = "Steve"
# }

# resource "aws_iam_policy" "Terraform_S3_policy" {
#     name = "Terraform_S3_policy"
#     policy = file("./s3policy.json")
# }

# resource "aws_iam_policy" "Terraform_EC2_policy" {
#     name = "Terraform_EC2_policy"
#      policy = file("./ec2policy.json")
# }

# resource "aws_iam_policy" "Terraform_IAM_policy" {
#     name = "Terraform_IAM_policy"
#     policy = file("./iampolicy.json")
# }

# resource "aws_iam_user_policy_attachment" "Jim_S3" {
#   user       = aws_iam_user.Jim.name
#   policy_arn = aws_iam_policy.Terraform_S3_policy.arn
# }

# resource "aws_iam_user_policy_attachment" "Pam_EC2" {
#   user       = aws_iam_user.Pam.name
#   policy_arn = aws_iam_policy.Terraform_EC2_policy.arn
# }

# resource "aws_iam_user_policy_attachment" "Mike_EC2" {
#   user       = aws_iam_user.Mike.name
#   policy_arn = aws_iam_policy.Terraform_IAM_policy.arn
# }

# resource "aws_iam_user_policy_attachment" "Steve_IAM" {
#   user       = aws_iam_user.Steve.name
#   policy_arn = aws_iam_policy.Terraform_IAM_policy.arn
# }

# resource "aws_iam_user_policy_attachment" "Steve_S3" {
#   user       = aws_iam_user.Steve.name
#   policy_arn = aws_iam_policy.Terraform_S3_policy.arn
# }

# resource "aws_iam_user_policy_attachment" "Steve_EC2" {
#   user       = aws_iam_user.Steve.name
#   policy_arn = aws_iam_policy.Terraform_EC2_policy.arn
# }

