#VPC Auto Variables
aws_region = "us-west-1"
environment = "uat"
business_division = "prod"
vpc_name = "prod-vpc"
vpc_cidr = "10.0.0.0/16"
vpc_azs = ["us-west-1a", "us-west-1b"]
vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_public_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
vpc_database_subnets = ["10.0.21.0/24", "10.0.22.0/24"]
vpc_create_database_subnet_group = true
vpc_create_database_subnet_route_table = true
vpc_enable_nat_gateway = true
vpc_single_nat_gateway = true
