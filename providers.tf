provider "aws" {
  region  = "eu-west-1"
  alias   = "MY_DEV_ENVIRONMENT"
  profile = var.my_dev_github_role != null ? null : "MY_DEV_ENVIRONMENT"
  dynamic "assume_role" {
    for_each = var.my_dev_github_role != null ? [var.my_dev_github_role] : []
    content {
      role_arn    = var.my_dev_github_role
    }
  }
}

provider "aws" {
  region  = "eu-west-1"
  alias   = "MY_DEVOPS"
  profile = var.my_devops_github_role != null ? null : "MY_DEVOPS"
  dynamic "assume_role" {
    for_each = var.my_devops_github_role != null ? [var.my_devops_github_role] : []
    content {
      role_arn    = var.my_devops_github_role
    }
  }
}