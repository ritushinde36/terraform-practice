terraform {
    cloud {
      organization = "Instagram_RS"
      workspaces {
        name = "Instagram_RS_PROD"
      }
    }
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }
}

provider "aws" {
  
}
