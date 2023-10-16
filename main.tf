module "components" {
  source = "git::https://github.com/ShivaGudithava/tf-module-vpc.git"

  for_each = var.components
  cidr = each.value["cidr"]
  subnets = each.value["subnets"]
}


