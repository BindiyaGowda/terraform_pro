variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/24"
}
variable "pub_sub_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/25"
}
variable "priv_sub_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.128/25"
}
