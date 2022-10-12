terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

module "ec2module" {
  source  = "./ec2"
}

output "module_output" {
  value = module.ec2module.instance_id
}

output "public_ip" {
  value = module.ec2module.instance_public_ip
}

output "public_dns" {
  value = module.ec2module.instance_public_dns
}
