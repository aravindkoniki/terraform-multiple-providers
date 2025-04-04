provider "aws" {
  alias  = "nonprod"
  region = "eu-west-1"

  assume_role {
    role_arn = "arn:aws:iam::767847069565:role/GitHubActionsRole" #MY_DEV_ENVIRONMENT
  }
}

provider "aws" {
  alias  = "prod"
  region = "eu-west-1"

  assume_role {
    role_arn = "arn:aws:iam::947500280148:role/GitHubActionsRole" #MY_DEVOPS
  }
}