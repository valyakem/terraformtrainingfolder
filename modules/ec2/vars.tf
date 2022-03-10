<<<<<<< HEAD
 variable "count" {
=======
 variable "ec2_count" {
>>>>>>> origin/featurebranch
     default = "1"
 }

  variable "ami_id" {
<<<<<<< HEAD
  #default = "ami-04505e74c0741db8d"
=======
  default = "ami-04505e74c0741db8d"
>>>>>>> origin/featurebranch
}

variable "instance_type" {
  type = string
  description = "Type of instance [t2, medium, large]"
  default = "t2.micro"
}

variable "subnet_id" {}