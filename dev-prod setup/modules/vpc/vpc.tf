variable "ENV" {
  
}
variable "REGION" {
  
}

module "vpc-main" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-prod-${var.ENV}"
  cidr = "10.0.0.0/16"

  azs = ["${var.REGION}a", "${var.REGION}b", "${var.REGION}c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets =  ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true",
    Env = "${var.ENV}"
  }
}

output "vpc_id" {
    description = "VPC ID:"
    value = "${module.vpc-main.vpc_id}"
}
output "private_subnets" {
    description = "list of private subnet IDs"
    value = ["${module.vpc-main.private_subnets}"]
  
}
output "public_subnets" {
    description = "list of public subnet IDs"
    value = ["${module.vpc-main.public_subnets}"]
  
}