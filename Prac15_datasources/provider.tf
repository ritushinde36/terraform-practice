terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
      local = {
        source = "hashicorp/local"
      }
    }
}

provider aws {
    region = "us-east-1"
}

provider local {
}