// Defining the provider

terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }
}

provider aws {

}

// Defining the eip

resource "aws_eip" "elastic_ip" {
    domain = "vpc"
}
