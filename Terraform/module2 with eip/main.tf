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
  #Sprofile = "Development"
}

module "db" {
  source  = "./db"
}

module "web" {
  source  = "./web"
}


output "db_private_ip" {
  value = module.db.db_private_ip
}

output "web_public_ip" {
  value = module.web.web_public_ip
}

output "web_public_dns" {
  value = module.web.web_public_dns
}

output "web_instance_id" {
  value = module.web.web_instance_id
}

output "web_elastic_ip" {
  value = module.web.web_elastic_ip
}
