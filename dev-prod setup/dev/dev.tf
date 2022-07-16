module "vpc-main" {
source = "../modules/vpc"

ENV = "dev"

REGION = var.AWS_REGION
}

module "instance" {
  source = "../modules/instances/"
  ENV = "dev"
  vpc_id = module.vpc-main.vpc_id
  public_subnets = module.vpc-main.public_subnets[0]
   }