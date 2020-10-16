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
  region  = "us-east-1"
}

resource "aws_key_pair" "my-keypair" {
  key_name   = var.key
  public_key = file(var.public_key)
}

// what anthony does in his demo project
//resource "aws_key_pair" "this" {
//count      = var.public_key_path != "" && var.create ? 1 : 0
//public_key = file(var.public_key_path)
//}
