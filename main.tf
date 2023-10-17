module "vpc" {
  source = "git::https://github.com/ShivaGudithava/tf-module-vpc.git"

  for_each = var.vpc
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]
  default_vpc_id = var.default_vpc_id
}

output "vpc" {
  value = module.vpc
}
