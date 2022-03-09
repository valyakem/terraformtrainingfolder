 variable "ec2_count" {
     default = "1"
 }

  variable "ami_id" {
  #default = "ami-04505e74c0741db8d"
}

variable "instance_type" {
  type = string
  description = "Type of instance [t2, medium, large]"
  default = "t2.micro"
}

variable "subnet_id" {}