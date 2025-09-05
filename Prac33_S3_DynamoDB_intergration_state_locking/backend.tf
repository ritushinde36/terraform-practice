# terraform {
#   backend "s3" {
#     bucket = "terraformbackendritu"
#     key = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }

terraform {
  backend "s3" {
    bucket = "terraformbackendritu"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "table_for_state_locking"
  }
}