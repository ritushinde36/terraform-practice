terraform {
  backend "s3" {
    bucket = "terraformbackendritushinde"
    key = "networking_team/networking_team_terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statelockingbackend"
  }
}