variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "service_name" {
  description = "App Runner service name"
  type        = string
  default     = "url-shortener"
}

variable "github_repo_url" {
  description = "GitHub repository URL"
  type        = string
  default     = "https://github.com/devgenix/simple-url-shortener"
}

variable "github_branch" {
  description = "GitHub repository branch"
  type        = string
  default     = "main"
}

variable "app_runner_connection_arn" {
  description = "The ARN of the existing App Runner GitHub connection"
  type        = string
}
