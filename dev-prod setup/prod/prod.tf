module "vpc-main" {
source = "../modules/vpc"

ENV = "prod"

REGION = var.AWS_REGION
}

module "instance" {
  source = "../modules/instances/"
  ENV = "prod"
  vpc_id = module.vpc-main.vpc_id
  public_subnets = module.vpc-main.public_subnets[0]
   }