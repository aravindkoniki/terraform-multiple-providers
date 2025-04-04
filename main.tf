module "non_prod_bucket" {
  source      = "./module"
  bucket_name = var.bucket_name

  providers = {
    aws = aws.nonprod
  }
}


module "prod_bucket" {
  source      = "./module"
  bucket_name = var.bucket_name

  providers = {
    aws = aws.prod
  }
}
