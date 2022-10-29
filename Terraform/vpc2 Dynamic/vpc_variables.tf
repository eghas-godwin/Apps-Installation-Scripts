variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

#Environment variable
variable "environment" {
    type = string
    default = "dev"
}

#Business Division
variable "business_division" {
    type = string
    default = "prod"
}
variable "name" {
    type = string
    default = "dev-vpc"
}

variable "cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_azs" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_private_subnets" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_public_subnets" {
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "vpc_database_subnets" {
    type = list(string)
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "vpc_enable_nat_gateway" {
    type = bool
    default = true
}

variable "vpc_single_nat_gateway" {
    type = bool
    default = true
}

variable "vpc_create_database_subnet_group" {
    type = bool
    default = true
}

variable "vpc_create_database_subnet_route_table" {
    type = bool
    default = true
}

variable "vpc_enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_enable_dns_support" {
    type = bool
    default = true
}

