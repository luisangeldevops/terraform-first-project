module "autoscaling" {
  source      = "./module/autoscaling"
  namespace   = var.namespace
  ssh_keypair = var.ssh_keypair

  vpc       = module.networking.vpc
  sg        = module.networking.sg
  db_config = module.database.db_config
}

module "database" {
  source    = "./module/database"
  namespace = var.namespace

  vpc = module.networking.vpc
  sg  = module.networking.sg
}
module "networking" {
  source    = "./module/networking"
  namespace = var.namespace
}
