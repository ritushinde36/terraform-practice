terraform {
  backend "s3" {
    bucket = "terrafrombackendritu"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}