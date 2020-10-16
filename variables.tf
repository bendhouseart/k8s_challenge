variable "aws_region" {
  default = "us-east-1"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "key" {
  default = "my-keypair"
}

variable "public_key" {
  default = "my-keypair.pub"
}

variable "bucket" {
  default = "k8-challenge-bucket"
}

variable "dynamo_db" {
  default = "k8_challenge_dynamo_db"
}

variable "my_ami" {
  default = "ami-0739f8cdb239fe9ae"
}
