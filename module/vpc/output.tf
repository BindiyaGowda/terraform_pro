output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.my_vpc.id
}

output "public_subnets" {
  description = "List of ID of public subnets"
  value       = aws_subnet.pub_sub.id
}

output "private_subnets" {
  description = "List of ID of private subnets"
  value       = aws_subnet.priv_sub.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.my_vpc.cidr_block
}
