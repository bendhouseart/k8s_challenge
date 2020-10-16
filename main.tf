###################
# AWS Configuration
###################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

# Define AWS as our provider
provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_key_pair" "my-keypair" {
  key_name   = var.key
  public_key = file(var.public_key)
}

