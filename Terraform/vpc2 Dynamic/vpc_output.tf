output "vpc_id" {
    value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
    value = module.vpc.vpc_cidr_block
}

output "vpc_azs" {
    value = module.vpc.azs
}
