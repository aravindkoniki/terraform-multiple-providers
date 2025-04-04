variable "bucket_name" {
  description = "bucket name"
}

variable "my_devops_github_role" {
  description = "github iam role" # "arn:aws:iam::947500280148:role/GitHubActionsRole" #MY_DEVOPS
  default     = null
}

variable "my_dev_github_role" {
  description = "github iam role" # "arn:aws:iam::767847069565:role/GitHubActionsRole" #MY_DEV_ENVIRONMENT
  default     = null
}
