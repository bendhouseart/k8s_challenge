#########################
# Cluster Instances
#########################

resource "aws_instance" "etcd" {
  count         = 3
  ami           = var.my_ami // Unbuntu 16.04 LTS HVM, EBS-SSD
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.kubernetes.id
  //private_ip                  = cidrhost("10.43.1.0/16", 10 + count.index)
  associate_public_ip_address = true

  availability_zone      = var.availability_zone
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  key_name               = var.key

  tags = {
    Name = "Etcd Instance-${count.index}"
  }

}

resource "aws_instance" "controller" {
  count         = 3
  ami           = var.my_ami // Unbuntu 16.04 LTS HVM, EBS-SSD
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.kubernetes.id
  //private_ip                  = cidrhost("10.43.2.0/16", 10 + count.index)
  associate_public_ip_address = true

  availability_zone      = var.availability_zone
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  key_name               = var.key

  tags = {
    Name = "Controller Instances-${count.index}"
  }
}

resource "aws_instance" "worker" {
  count         = 3
  ami           = var.my_ami // Unbuntu 16.04 LTS HVM, EBS-SSD
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.kubernetes.id
  //private_ip                  = cidrhost("10.43.3.0/16", 10 + count.index)
  associate_public_ip_address = true

  availability_zone      = var.availability_zone
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  key_name               = var.key
  source_dest_check      = false

  tags = {
    Name = "Worker Instances-${count.index}"
  }
}
