resource "aws_subnet" "this" {
  count = var.no_availability_zones
  vpc_id     = var.vpc_id
  cidr_block = cidrsubnet(var.cidr_block, var.newbits, count.index)
  availability_zone = var.availability_zone[count.index]
}