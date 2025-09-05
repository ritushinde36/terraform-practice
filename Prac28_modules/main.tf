# module "ec2-instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "5.7.0"
# }

# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "20.24.3"
#   subnet_ids = ["subnet-0f81f38ed6d924416","subnet-043834f6f18bc8931"]
#   cluster_name = "test_cluster"
# }