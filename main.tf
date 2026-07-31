module "s3" {
  source      = "../Projects1"
  initial     = "bs"
  surname     = "sithole"
  environment = "dev"
  resource    = "s3"

}

module "eks" {
  source = "./modules/eks"

  environment  = var.environment
  aws_region   = var.aws_region
  cluster_name = var.cluster_name
}
