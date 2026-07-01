output "cidr_block" {
  value = aws_subnet.this[*].cidr_block
}