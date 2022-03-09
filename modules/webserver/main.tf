terraform {
  required_version = ">= 0.12"
}

resource "aws_subnet" "webserver" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block
}

resource "aws_instance" "webserver" {
  ami               = var.ami  #"ami-04505e74c0741db8d"
  instance_type     = var.instance_type
  subnet_id         = aws_subnet.webserver.id

  tags = {
      Name = "${var.webserver_name}-Webservers"
  }
}