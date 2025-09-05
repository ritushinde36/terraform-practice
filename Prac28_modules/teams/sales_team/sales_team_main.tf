# module "EC2_Module" {
#     source = "../../modules/EC2 module"
# }

# module "IAM_Module" {
#     source = "../../modules/IAM module"
# }

module "SG_Module" {
    source = "../../modules/SG module"
}

# module "VPC_Module" {
#     source = "../../modules/VPC module"
  
# }