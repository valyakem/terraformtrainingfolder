provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block        = "10.0.0.0/16"
}

module "nbwebserver" {
  source            = "modules/webserver/"
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.10.0.0/16"
  webserver_name    = "nb-webserver"
  ami               = "ami-04505e74c0741db8d"
  instance_type     = "t2.micro"
}