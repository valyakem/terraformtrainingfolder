module "nbvpc" {
    source        = "./modules/vpc"
    vpc_cidr      = "192.168.0.0/16"
    tenancy       = "default"
    vpc_id        = "${module.nbvpc.vpc_id.id}"
    subnet_cidr   = "192.168.1.0/24"
}

module "nbec2" {
    source = "./modules/ec2"
    ec2_count       = 1
    instance_type   = "t2.micro"
    subnet_id       = "${module.nbec2.subnet_id.id}"
}