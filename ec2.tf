#########################
# Cluster Instances
#########################

resource "aws_instance" "etcd" {
  count         = 3
  ami           = "ami-1967056a" // Unbuntu 16.04 LTS HVM, EBS-SSD
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.kubernetes.id
  private_ip                  = cidrhost("10.43.0.0/16", 10 + count.index)
  associate_public_ip_address = true

  availability_zone      = "us-east-1"
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  key_name               = "my-keypair"
}

resource "aws_instance" "controller" {
  count         = 3
  ami           = "ami-1967056a" // Unbuntu 16.04 LTS HVM, EBS-SSD
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.kubernetes.id
  private_ip                  = cidrhost("10.43.0.0/16", 10 + count.index)
  associate_public_ip_address = true

  availability_zone      = "us-east-1"
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  key_name               = "my-keypair"
}

resource "aws_instance" "worker" {
  count         = 3
  ami           = "ami-1967056a" // Unbuntu 16.04 LTS HVM, EBS-SSD
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.kubernetes.id
  private_ip                  = cidrhost("10.43.0.0/16", 10 + count.index)
  associate_public_ip_address = true

  availability_zone      = "us-east-1"
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  key_name               = "my-keypair"
  source_dest_check      = false
}