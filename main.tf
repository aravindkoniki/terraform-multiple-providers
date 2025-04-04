module "non_prod_bucket" {
  source      = "./module"
  bucket_name = var.bucket_name

  providers = {
    aws = aws.MY_DEV_ENVIRONMENT
  }
}


module "prod_bucket" {
  source      = "./module"
  bucket_name = var.bucket_name

  providers = {
    aws = aws.MY_DEVOPS
  }
}
