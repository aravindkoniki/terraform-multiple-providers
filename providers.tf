provider "aws" {
  region  = var.env_config.aws_region
  profile = var.env_config.aws_profile
  assume_role {
    role_arn = "arn:aws:iam::${var.env_config.aws_account}:role/${var.deploy_role_arn}"
  }
}