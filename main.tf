module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  private_subnet_cidrs = ["10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

module "ecr" {
  source          = "./modules/ecr"
  repository_name = var.repository_name
}

module "ecs" {
  source                 = "./modules/ecs"
  cluster_name           = var.cluster_name
  service_name           = var.service_name
  task_definition_family = var.task_definition_family
  container_image        = module.ecr.repository_url
  container_port         = 80
  private_subnet_ids     = module.vpc.private_subnet_ids
  log_group_name         = var.log_group_name
  region                 = var.region
}

module "load_balancer" {
  source              = "./modules/alb"
  public_subnet_id    = module.vpc.public_subnet_id
  target_group_vpc_id = module.vpc.vpc_id
  container_port      = 80
  certificate_arn     = var.certificate_arn
}