locals {
  name = "${var.project}-${var.env}"
  tags = {
    Project = var.project
    Env     = var.env
  }
}

module "network" {
  source               = "../../modules/network-aws"
  name                 = local.name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = local.tags
}

module "storage" {
  source = "../../modules/storage-aws"
  name   = local.name
  tags   = local.tags
}

module "compute" {
  source            = "../../modules/compute-aws"
  name              = local.name
  vpc_id            = module.network.vpc_id
  public_subnet_ids  = module.network.public_subnet_ids
  private_subnet_ids = module.network.private_subnet_ids

  instance_type    = var.instance_type
  ami_id           = var.ami_id
  app_user_data    = var.app_user_data

  desired_capacity = var.desired_capacity
  min_size         = var.min_size
  max_size         = var.max_size

  tags = local.tags
}
