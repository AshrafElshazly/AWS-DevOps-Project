module "vpc" {
  source = "./modules/network"
}

module "instances" {
  source              = "./modules/instances"
  vpc_id              = module.vpc.vpc_id
  private_subnet_1_id = module.vpc.private_subnet_1_id
  private_subnet_2_id = module.vpc.private_subnet_2_id
  private_subnet_3_id = module.vpc.private_subnet_3_id
  private_subnet_4_id = module.vpc.private_subnet_4_id
  public_subnet_id    = module.vpc.public_subnet_1_id
}

module "alb" {
  source             = "./modules/alb"
  vpc_id             = module.vpc.vpc_id
  public_subnet_1_id = module.vpc.public_subnet_1_id
  public_subnet_2_id = module.vpc.public_subnet_2_id
  app1_id            = module.instances.app1_id
  app2_id            = module.instances.app2_id
}
