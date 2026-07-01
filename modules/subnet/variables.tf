variable "no_availability_zones" {
  type = number
}

variable "vpc_id" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "newbits" {
  type = number
}

variable "availability_zone" {
  type = list(string)
}