terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}

# provider "aws" {
#     region = "ap-south-1"
  
# }

##################
//this is the default region in us-east-1
provider "aws" {
}

//this is mumbai region of ap-south-1
provider "aws" {
    alias = "mumbai"
    region = "ap-south-1" 
}

//this is singapore region of ap-southeast-1
provider "aws" {
    alias = "singapore"
    region = "ap-southeast-1" 
}