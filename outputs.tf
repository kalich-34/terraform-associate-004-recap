output "vpc_cidr_block" {
  value = module.vpc.cidr_block
}

output "subnet_cidr_block" {
  value = module.subnet[*].cidr_block
}