variable "vpc_id" {
  type  = string
  description = "VPC ID"
  }

variable "cidr_block" {
 type = string
 description = "Subnet cidr block"
}

variable "webserver_name" {
  type = string
  description = "Name of webserver"
}

variable "ami" {
  type = string
  description = "Ami to use on the websever instance"
}

variable "instance_type" {
  type = string
  description = "Instance type"
}