variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_block" {
  description = "The CIDR range for the VPC. This should be a valid private (RFC 1918) CIDR range."
  default     = "10.0.0.0/16"
}

variable "public_subnet_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.64.0/19", "10.0.96.0/19"]
}

variable "private_subnet_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.0.0/19", "10.0.32.0/19"]
}
