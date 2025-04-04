variable "bucket_name" {
  description = "bucket name"
}

variable "env_config" {
  description = "Environment configuration"
  type = object({
    env_name    = string,
    aws_region  = string,
    aws_profile = string,
    aws_account = string
  })
}

variable "deploy_role_arn" {
  default     = "GitHubActionsRole"
  description = "Deployment IAM Role ARN"
  type        = string
}

variable "module_versions" {
  type        = map(any)
  description = "module versions"
}
