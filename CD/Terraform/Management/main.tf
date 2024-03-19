module "network" {
  source = "./modules/network"
}

module "ecr" {
  source          = "./modules/ecr"
  repository_name = var.repository_name
}

module "instances" {
  source           = "./modules/instances"
  vpc_id           = module.network.vpc_id
  public_subnet_id = module.network.public_subnet_id
  instance_type    = var.instance_type
  ami              = var.ami
  userdata         = var.userdata
}
