resource "aws_iam_group" "Terraform_group" {
    name = var.iam_group_name
}

resource "aws_iam_user" "Terraform_user" {
    name = var.iam_user_name

    tags = {
      Name = var.iam_user_name
    }
}

resource "aws_iam_user_group_membership" "Terraform_user_group_membership" {
    user = aws_iam_user.Terraform_user.name

    groups = [aws_iam_group.Terraform_group.name]
  
}