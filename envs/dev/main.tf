#VPC
module "vpc" {
  source         = "../../modules/vpc"
  vpc_cidr_block = "192.168.0.0/16"
  vpc_name       = "Dev-vpc"
}
#Frontend
module "frontend" {
  source                 = "../../modules/frontendaws"
  bucket_name            = "frontend.nextstep.teddmanuel.com"
  aws_origin_access_name = "cross access from cloudfront"
  cert_domain            = "*.nextstep.teddmanuel.com"
  dns_record             = "frontend.nextstep.teddmanuel.com"
  hosted_zone_name       = "nextstep.teddmanuel.com"
}