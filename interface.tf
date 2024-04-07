variable "name" {
  description = "The name of the VPC"
}

variable "cidr" {
  description = "The CIDR block for the VPC"  
}

variable "public_subnet" {
  description = "The public subnet to create"
}

variable "enable_dns_hostnames" {
  default = true
  description = "Should be true if you want to use private DNS within the VPC"
}

variable "enable_dns_support" {
  default = true
  description = "Should be true if you want to use private DNS within the VPC"
}

output "public_subnet_id" {
  value = aws_subnet.public.id
  sensitive = true
}

output "vpc_id" {
  value = aws_vpc.tfb.id
}

output "cidr" {
  value = aws_vpc.tfb.cidr_block
}