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

variable default_instance_user {
  default = "ubuntu"
}

variable etcd_instance_type {
  default = "t2.small"
}
variable controller_instance_type {
  default = "t2.small"
}
variable worker_instance_type {
  default = "t2.small"
}

variable kubernetes_cluster_dns {
  default = "10.31.0.1"
}
### VARIABLES BELOW MUST NOT BE CHANGED ###

variable vpc_cidr {
  default = "10.43.0.0/16"
}

variable kubernetes_pod_cidr {
  default = "10.200.0.0/16"
}

variable elb_name {
  description = "Name of the ELB for Kubernetes API"
  default = "kubernetes"
}

variable owner {
  default = "Kubernetes"
}