<<<<<<< HEAD
resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_id}"
  instance_tenancy = "dedicated"
=======
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}

resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"
>>>>>>> origin/featurebranch

  tags = {
    "Name" = "main"
  }
}

resource "aws_subnet" "main" {
<<<<<<< HEAD
  vpc_id     = aws_vpc.main.id
=======
  vpc_id     = "${var.vpc_id}"
>>>>>>> origin/featurebranch
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "nb-subnet"
  }
}

output "vpc_id" {
    value = "${aws_vpc.main.id}"
}

output "subnet_id" {
    value = "${aws_subnet.main.id}"
}