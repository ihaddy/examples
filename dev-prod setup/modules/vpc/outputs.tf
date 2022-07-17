
output "vpc_id" {
  description = "VPC ID:"
  value       = module.vpc-main.vpc_id
}
output "private_subnets" {
  description = "list of private subnet IDs"
  value       = ["${module.vpc-main.private_subnets}"]

}
output "public_subnets" {
  description = "list of public subnet IDs"
  value       = ["${module.vpc-main.public_subnets}"]

}