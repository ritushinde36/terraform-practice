terraform {
  backend "s3" {
    bucket = "terraformbackendritushinde"
    key = "security_team/security_team_terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statelockingbackend"
  }
}