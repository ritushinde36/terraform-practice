terraform {
  backend "s3" {
    bucket = "terraformbackendritushinde"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statelockingbackend"
  }
}