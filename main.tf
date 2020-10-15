provider "aws" {
  region = var.aws_region
}

# store tfstate in s3 and locking information in DynamoDB
terraform {
  backend "s3" {
    encrypt = true
    # cannot contain interpolations
    # bucket = "${aws_s3_bucket.terraform-state-storage-s3.bucket}"
    bucket = "my-terraform-state-s3"
    # region = "${aws_s3_bucket.terraform-state-storage-s3.region}"
    region = var.aws_region
    # dynamodb_table = "example-iac-terraform-state-lock-dynamo"
    key = "terraform-state/terraform.tfstate"
  }
}