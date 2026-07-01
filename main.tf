data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block
}

module "subnet" {
  source = "./modules/subnet"
  count = length(data.aws_availability_zones.available.names)
  newbits = var.newbits
  availability_zone = data.aws_availability_zones.available.names
  cidr_block = var.cidr_block
  vpc_id = module.vpc.id
}